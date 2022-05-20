.class public Lcom/arcsoft/avatar2/gl/GLFramebuffer;
.super Ljava/lang/Object;
.source "GLFramebuffer.java"


# static fields
.field public static final f:Ljava/lang/String; = "GLFramebuffer"


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:[I

.field public e:Z

.field public g:I

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->a:[I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->b:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->c:[I

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->d:[I

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->c:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->b:[I

    aput v1, v0, v1

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->d:[I

    aput v1, v0, v1

    .line 4
    iput v1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->h:I

    iput v1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->g:I

    .line 5
    iput-boolean v1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->e:Z

    return-void
.end method


# virtual methods
.method public bind(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 p1, 0xb71

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_0
    const p1, 0x8ca6

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->a:[I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const p1, 0x8d40

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->b:[I

    aget v0, v0, v1

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    if-eqz p2, :cond_1

    const/16 p1, 0x4100

    .line 4
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_1
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->h:I

    return v0
.end method

.method public getTextureId()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->g:I

    return v0
.end method

.method public init(IIZ)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->a()V

    .line 2
    iput p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->g:I

    .line 3
    iput p2, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->h:I

    .line 4
    iput-boolean p3, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->e:Z

    .line 5
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->a:[I

    const/4 p2, 0x0

    aput p2, p1, p2

    .line 6
    iget-object p3, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->b:[I

    aput p2, p3, p2

    .line 7
    iget-object p3, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->c:[I

    aput p2, p3, p2

    const p3, 0x8ca6

    .line 8
    invoke-static {p3, p1, p2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 9
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->b:[I

    const/4 p3, 0x1

    invoke-static {p3, p1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 10
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->b:[I

    aget p1, p1, p2

    const v0, 0x8d40

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 p1, 0xcf5

    .line 11
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 12
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->c:[I

    invoke-static {p3, p1, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 13
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->c:[I

    aget p1, p1, p2

    const/16 v1, 0xde1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2600

    const/16 v2, 0x2801

    .line 14
    invoke-static {v1, v2, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 15
    invoke-static {v1, v2, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const p1, 0x812f

    const/16 v2, 0x2802

    .line 16
    invoke-static {v1, v2, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 17
    invoke-static {v1, v2, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 18
    iget v6, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->g:I

    iget v7, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->h:I

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 19
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->c:[I

    aget p1, p1, p2

    const v2, 0x8ce0

    invoke-static {v0, v2, v1, p1, p2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 20
    iget-boolean p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->e:Z

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->d:[I

    invoke-static {p3, p1, p2}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 22
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->d:[I

    aget p1, p1, p2

    const p3, 0x8d41

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const p1, 0x81a6

    .line 23
    iget v2, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->g:I

    iget v3, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->h:I

    invoke-static {p3, p1, v2, v3}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const p1, 0x8d00

    .line 24
    iget-object v2, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->d:[I

    aget v2, v2, p2

    invoke-static {v0, p1, p3, v2}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 25
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 26
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->a:[I

    aget p1, p1, p2

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 27
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public isIsNeedDepth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->e:Z

    return v0
.end method

.method public unBind(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0xb71

    .line 2
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_1
    const p1, 0x8d40

    .line 3
    iget-object p2, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->a:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->c:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->c:[I

    aput v2, v0, v2

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->b:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->b:[I

    aput v2, v0, v2

    .line 5
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->e:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->d:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 7
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->d:[I

    aput v2, v0, v2

    .line 8
    :cond_0
    iput v2, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->h:I

    iput v2, p0, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->g:I

    return-void
.end method
