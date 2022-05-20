.class public Lcom/arcsoft/supernight/StreamPreviewGL;
.super Landroid/opengl/GLSurfaceView;
.source "StreamPreviewGL.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/supernight/StreamPreviewGL$OnRenderListener;
    }
.end annotation


# static fields
.field public static final s:[F

.field public static final t:[F

.field public static final u:[F

.field public static final v:[F

.field public static final w:[F

.field public static final x:[F

.field public static final y:[F

.field public static final z:[F


# instance fields
.field public A:Lcom/arcsoft/supernight/StreamPreviewGL$OnRenderListener;

.field public B:Landroid/graphics/RectF;

.field public C:Z

.field public D:Z

.field public E:I

.field public F:I

.field public G:I

.field public H:[Ljava/nio/ByteBuffer;

.field public I:Z

.field public J:I

.field public K:Z

.field public L:Z

.field public a:Landroid/content/Context;

.field public b:Z

.field public c:I

.field public d:I

.field public e:[I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Ljava/nio/FloatBuffer;

.field public o:Ljava/nio/FloatBuffer;

.field public p:Ljava/nio/ByteBuffer;

.field public q:I

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/arcsoft/supernight/StreamPreviewGL;->s:[F

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lcom/arcsoft/supernight/StreamPreviewGL;->t:[F

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lcom/arcsoft/supernight/StreamPreviewGL;->u:[F

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_3

    sput-object v1, Lcom/arcsoft/supernight/StreamPreviewGL;->v:[F

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_4

    sput-object v1, Lcom/arcsoft/supernight/StreamPreviewGL;->w:[F

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_5

    sput-object v1, Lcom/arcsoft/supernight/StreamPreviewGL;->x:[F

    new-array v1, v0, [F

    .line 7
    fill-array-data v1, :array_6

    sput-object v1, Lcom/arcsoft/supernight/StreamPreviewGL;->y:[F

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_7

    sput-object v0, Lcom/arcsoft/supernight/StreamPreviewGL;->z:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->b:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->p:Ljava/nio/ByteBuffer;

    .line 4
    iput v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->q:I

    .line 5
    iput v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->r:I

    .line 6
    iput-object v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->A:Lcom/arcsoft/supernight/StreamPreviewGL$OnRenderListener;

    .line 7
    iput-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->C:Z

    .line 8
    iput-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->D:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->I:Z

    const/16 v1, 0x5a

    .line 10
    iput v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->J:I

    .line 11
    iput-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->K:Z

    .line 12
    invoke-virtual {p0, p1}, Lcom/arcsoft/supernight/StreamPreviewGL;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->b:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->p:Ljava/nio/ByteBuffer;

    .line 16
    iput p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->q:I

    .line 17
    iput p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->r:I

    .line 18
    iput-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->A:Lcom/arcsoft/supernight/StreamPreviewGL$OnRenderListener;

    .line 19
    iput-boolean p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->C:Z

    .line 20
    iput-boolean p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->D:Z

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->I:Z

    const/16 v0, 0x5a

    .line 22
    iput v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->J:I

    .line 23
    iput-boolean p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->K:Z

    .line 24
    invoke-virtual {p0, p1}, Lcom/arcsoft/supernight/StreamPreviewGL;->init(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    const/16 v1, 0x30

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->n:Ljava/nio/FloatBuffer;

    .line 3
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iput-boolean v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->C:Z

    .line 5
    iput-boolean v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->D:Z

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method private b()V
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    iput-object v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->e:[I

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 3
    iget-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->e:[I

    aget v0, v0, v2

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/high16 v0, 0x46180000    # 9728.0f

    const/16 v2, 0x2801

    .line 4
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v3, 0x46180400    # 9729.0f

    const/16 v4, 0x2800

    .line 5
    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2802

    const v6, 0x47012f00    # 33071.0f

    .line 6
    invoke-static {v1, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v7, 0x2803

    .line 7
    invoke-static {v1, v7, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 8
    iget-object v8, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->e:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-static {v1, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 10
    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 11
    invoke-static {v1, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 12
    invoke-static {v1, v7, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0xcf5

    .line 13
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "arcsoft/vertex.sh"

    invoke-static {v1, v0}, Lcom/arcsoft/supernight/ShaderUtils;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->f:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "arcsoft/frag.sh"

    invoke-static {v1, v0}, Lcom/arcsoft/supernight/ShaderUtils;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->g:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/arcsoft/supernight/ShaderUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->h:I

    const-string v1, "aPosition"

    .line 4
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->i:I

    .line 5
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->h:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->j:I

    .line 6
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->h:I

    const-string v1, "uTextureY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->k:I

    .line 7
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->h:I

    const-string v1, "uTextureUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->l:I

    .line 8
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->h:I

    const-string v1, "uNV12"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->m:I

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->K:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/arcsoft/supernight/StreamPreviewGL;->s:[F

    .line 3
    iget v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->J:I

    if-eqz v1, :cond_4

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_3

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/arcsoft/supernight/StreamPreviewGL;->h()[F

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/arcsoft/supernight/StreamPreviewGL;->g()[F

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/arcsoft/supernight/StreamPreviewGL;->f()[F

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_4
    invoke-direct {p0}, Lcom/arcsoft/supernight/StreamPreviewGL;->e()[F

    move-result-object v0

    .line 8
    :goto_0
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->o:Ljava/nio/FloatBuffer;

    .line 9
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    iput-boolean v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->K:Z

    return-void
.end method

.method private e()[F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->I:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/supernight/StreamPreviewGL;->w:[F

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/arcsoft/supernight/StreamPreviewGL;->s:[F

    :goto_0
    return-object v0
.end method

.method private f()[F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->I:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/supernight/StreamPreviewGL;->x:[F

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/arcsoft/supernight/StreamPreviewGL;->t:[F

    :goto_0
    return-object v0
.end method

.method private g()[F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->I:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/supernight/StreamPreviewGL;->y:[F

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/arcsoft/supernight/StreamPreviewGL;->u:[F

    :goto_0
    return-object v0
.end method

.method private h()[F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->I:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/supernight/StreamPreviewGL;->z:[F

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/arcsoft/supernight/StreamPreviewGL;->v:[F

    :goto_0
    return-object v0
.end method

.method private i()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->H:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->i:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->n:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 4
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    iget v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->j:I

    const/4 v2, 0x2

    iget-object v6, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->o:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x84c0

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 8
    iget-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->e:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->G:I

    const/16 v3, 0xcf2

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v4, 0xde1

    const/16 v6, 0x1909

    .line 10
    iget v7, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->c:I

    iget v8, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->d:I

    const/4 v9, 0x0

    const/16 v10, 0x1909

    const/16 v11, 0x1401

    iget-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->H:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 11
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->k:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c1

    .line 12
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 13
    iget-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->e:[I

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 14
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->G:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x190a

    .line 15
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->c:I

    div-int/lit8 v8, v0, 0x2

    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->d:I

    div-int/lit8 v9, v0, 0x2

    const/4 v10, 0x0

    const/16 v11, 0x190a

    const/16 v12, 0x1401

    iget-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->H:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    .line 17
    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 18
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->l:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v0, 0x5

    const/4 v3, 0x4

    .line 19
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 20
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 21
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 22
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 23
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->m:I

    iget-boolean v1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->L:Z

    xor-int/2addr v1, v4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method


# virtual methods
.method public drawBlackScreen()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->b:Z

    .line 2
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 3
    iget-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->A:Lcom/arcsoft/supernight/StreamPreviewGL$OnRenderListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/arcsoft/supernight/StreamPreviewGL$OnRenderListener;->onRenderNotify()V

    :cond_0
    return-void
.end method

.method public drawPreviewFrame([Ljava/nio/ByteBuffer;III)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->H:[Ljava/nio/ByteBuffer;

    .line 2
    iput p4, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->G:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->b:Z

    .line 4
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 5
    iget-object p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->A:Lcom/arcsoft/supernight/StreamPreviewGL$OnRenderListener;

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2}, Lcom/arcsoft/supernight/StreamPreviewGL$OnRenderListener;->onRenderNotify()V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->H:[Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->a:Landroid/content/Context;

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 3
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    const/16 p1, 0x4100

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 2
    iget-boolean p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->b:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, v0, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/arcsoft/supernight/StreamPreviewGL;->d()V

    .line 5
    invoke-direct {p0}, Lcom/arcsoft/supernight/StreamPreviewGL;->a()V

    .line 6
    invoke-direct {p0}, Lcom/arcsoft/supernight/StreamPreviewGL;->i()V

    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 2
    iget p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->E:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->F:I

    if-eq p1, p3, :cond_1

    .line 3
    :cond_0
    iput p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->E:I

    .line 4
    iput p3, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->F:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->D:Z

    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, p1, p1, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 2
    invoke-direct {p0}, Lcom/arcsoft/supernight/StreamPreviewGL;->b()V

    .line 3
    invoke-direct {p0}, Lcom/arcsoft/supernight/StreamPreviewGL;->c()V

    return-void
.end method

.method public releaseGLView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->e:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    return-void
.end method

.method public setDataFormat(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->L:Z

    return-void
.end method

.method public setOrientationMirror(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->J:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->I:Z

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->J:I

    .line 3
    iput-boolean p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->I:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->K:Z

    :cond_1
    return-void
.end method

.method public setPreviewArea(Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->B:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->C:Z

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->c:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->d:I

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->c:I

    .line 3
    iput p2, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->d:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->H:[Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method public setRenderListener(Lcom/arcsoft/supernight/StreamPreviewGL$OnRenderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/supernight/StreamPreviewGL;->A:Lcom/arcsoft/supernight/StreamPreviewGL$OnRenderListener;

    return-void
.end method
