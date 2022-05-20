.class public Lcom/arcsoft/avatar2/gl/GLRenderEngine;
.super Ljava/lang/Object;
.source "GLRenderEngine.java"


# static fields
.field public static FRAGMENT_SHADER_NV21:Ljava/lang/String; = "#version 310 es\nprecision mediump float;\nlayout(location = 0) in vec2 v_texCoord;\nout vec4 outColor;\nuniform sampler2D y_sampler;\nuniform sampler2D uv_sampler;\nvoid main() {vec3 yuv;\nvec3 rgb;\nvec4 temp;\nyuv.x = texture(y_sampler,v_texCoord).r;\ntemp = texture(uv_sampler,v_texCoord);\nyuv.y = temp.a - 0.5;\nyuv.z = temp.r - 0.5;\nrgb = mat3(1.0,1.0,1.0,   0.0,-0.344,1.770,   1.403,-0.714,0.0) * yuv;\noutColor = vec4(rgb,1.0);\n}"

.field public static FRAGMENT_SHADER_RGBA8:Ljava/lang/String; = "#version 310 es\nprecision mediump float;\nlayout(location = 0) in vec2 v_texCoord;\nout vec4 outColor;\nuniform sampler2D rgba_sampler;\nvoid main(){outColor = texture(rgba_sampler,v_texCoord);\n}"

.field public static final MIRROR_MIRROR:I = 0x1

.field public static final MIRROR_NO_MIRROR:I = 0x0

.field public static final VERTEX_FLIP_Y:I = 0x1

.field public static final VERTEX_NO_FLIP_Y:I = 0x0

.field public static VERTEX_SHADER:Ljava/lang/String; = "#version 310 es\nlayout(location = 0) in vec3 a_position;\nlayout(location = 1) in vec2 a_texCoord;\nuniform int needFlipY;\nuniform float depth_value;\nlayout (location = 0) out vec2 v_texCoord;\nvoid main() {vec3 newPos = a_position;\nif(1==needFlipY){ newPos = vec3(a_position.x,a_position.y * -1.0,a_position.z);\n}gl_Position = vec4(newPos.xy,depth_value,1.0);\nv_texCoord = a_texCoord;\n}"

.field public static final a:Ljava/lang/String; = "GLRenderEngine"

.field public static final b:Ljava/lang/String; = "y_sampler"

.field public static final c:Ljava/lang/String; = "uv_sampler"

.field public static final d:Ljava/lang/String; = "rgba_sampler"

.field public static final e:Ljava/lang/String; = "needFlipY"

.field public static final f:Ljava/lang/String; = "depth_value"

.field public static final g:F = 1.0f


# instance fields
.field public A:I

.field public B:Z

.field public C:I

.field public D:I

.field public E:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

.field public F:F

.field public h:F

.field public i:[I

.field public j:[I

.field public k:[I

.field public l:[I

.field public m:I

.field public n:I

.field public o:I

.field public p:[I

.field public q:[I

.field public r:Ljava/nio/FloatBuffer;

.field public s:Ljava/nio/FloatBuffer;

.field public t:I

.field public u:[F

.field public v:[F

.field public final w:I

.field public final x:I

.field public y:[I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 39
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->i:[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 40
    iput-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->j:[I

    new-array v2, v0, [I

    .line 41
    iput-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->k:[I

    new-array v2, v1, [I

    .line 42
    iput-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->l:[I

    const/4 v2, -0x1

    .line 43
    iput v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->m:I

    .line 44
    iput v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->n:I

    new-array v0, v0, [I

    .line 45
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->p:[I

    new-array v0, v1, [I

    .line 46
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->q:[I

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 47
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->u:[F

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 48
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->v:[F

    .line 49
    array-length v0, v0

    const/4 v2, 0x4

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->w:I

    .line 50
    array-length v0, v1

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->x:I

    new-array v0, v2, [I

    .line 51
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->y:[I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->z:I

    .line 53
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->A:I

    .line 54
    iput p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->t:I

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
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
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->i:[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 4
    iput-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->j:[I

    new-array v2, v0, [I

    .line 5
    iput-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->k:[I

    new-array v2, v1, [I

    .line 6
    iput-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->l:[I

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->m:I

    .line 8
    iput v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->n:I

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->p:[I

    new-array v0, v1, [I

    .line 10
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->q:[I

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 11
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->u:[F

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 12
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->v:[F

    .line 13
    array-length v0, v0

    const/4 v2, 0x4

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->w:I

    .line 14
    array-length v0, v1

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->x:I

    new-array v0, v2, [I

    .line 15
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->y:[I

    .line 16
    iput p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->z:I

    .line 17
    iput p2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->A:I

    const/16 p1, 0x802

    .line 18
    iput p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->t:I

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
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
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
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 21
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->i:[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 22
    iput-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->j:[I

    new-array v2, v0, [I

    .line 23
    iput-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->k:[I

    new-array v2, v1, [I

    .line 24
    iput-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->l:[I

    const/4 v2, -0x1

    .line 25
    iput v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->m:I

    .line 26
    iput v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->n:I

    new-array v0, v0, [I

    .line 27
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->p:[I

    new-array v0, v1, [I

    .line 28
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->q:[I

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 29
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->u:[F

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 30
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->v:[F

    .line 31
    array-length v0, v0

    const/4 v2, 0x4

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->w:I

    .line 32
    array-length v0, v1

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->x:I

    new-array v0, v2, [I

    .line 33
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->y:[I

    .line 34
    iput p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->z:I

    .line 35
    iput p2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->A:I

    .line 36
    iput p3, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->t:I

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
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
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
.end method

.method private a()V
    .locals 4

    .line 73
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 74
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->q:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 75
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->t:I

    const/16 v2, 0x305

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x802

    if-eq v0, v2, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->k:[I

    aget v0, v0, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 77
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->k:[I

    aget v0, v0, v3

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->l:[I

    aget v0, v0, v1

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 79
    :goto_0
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->D:I

    if-ne v3, v0, :cond_2

    .line 80
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->m:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    .line 81
    :cond_2
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->m:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 82
    :goto_1
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->n:I

    iget v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->F:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v0, 0x6

    const/4 v2, 0x4

    .line 83
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 84
    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    const/16 v0, 0xde1

    .line 85
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method private a([F)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->B:Z

    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->C:I

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    aput v13, p1, v11

    .line 4
    aput v13, p1, v10

    .line 5
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    aput v0, p1, v8

    .line 6
    aput v13, p1, v7

    .line 7
    aput v0, p1, v9

    .line 8
    aput v12, p1, v6

    .line 9
    aput v13, p1, v5

    .line 10
    aput v12, p1, v4

    goto/16 :goto_0

    .line 11
    :cond_1
    aput v13, p1, v11

    .line 12
    aput v12, p1, v10

    .line 13
    aput v13, p1, v8

    .line 14
    aput v13, p1, v7

    .line 15
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    aput v0, p1, v9

    .line 16
    aput v13, p1, v6

    .line 17
    aput v0, p1, v5

    .line 18
    aput v12, p1, v4

    goto/16 :goto_0

    .line 19
    :cond_2
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    aput v0, p1, v11

    .line 20
    aput v12, p1, v10

    .line 21
    aput v13, p1, v8

    .line 22
    aput v12, p1, v7

    .line 23
    aput v13, p1, v9

    .line 24
    aput v13, p1, v6

    .line 25
    aput v0, p1, v5

    .line 26
    aput v13, p1, v4

    goto :goto_0

    .line 27
    :cond_3
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    aput v0, p1, v11

    .line 28
    aput v13, p1, v10

    .line 29
    aput v0, p1, v8

    .line 30
    aput v12, p1, v7

    .line 31
    aput v13, p1, v9

    .line 32
    aput v12, p1, v6

    .line 33
    aput v13, p1, v5

    .line 34
    aput v13, p1, v4

    goto :goto_0

    .line 35
    :cond_4
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->C:I

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 36
    :cond_5
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    aput v0, p1, v11

    .line 37
    aput v13, p1, v10

    .line 38
    aput v13, p1, v8

    .line 39
    aput v13, p1, v7

    .line 40
    aput v13, p1, v9

    .line 41
    aput v12, p1, v6

    .line 42
    aput v0, p1, v5

    .line 43
    aput v12, p1, v4

    goto :goto_0

    .line 44
    :cond_6
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    aput v0, p1, v11

    .line 45
    aput v12, p1, v10

    .line 46
    aput v0, p1, v8

    .line 47
    aput v13, p1, v7

    .line 48
    aput v13, p1, v9

    .line 49
    aput v13, p1, v6

    .line 50
    aput v13, p1, v5

    .line 51
    aput v12, p1, v4

    goto :goto_0

    .line 52
    :cond_7
    aput v13, p1, v11

    .line 53
    aput v12, p1, v10

    .line 54
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    aput v0, p1, v8

    .line 55
    aput v12, p1, v7

    .line 56
    aput v0, p1, v9

    .line 57
    aput v13, p1, v6

    .line 58
    aput v13, p1, v5

    .line 59
    aput v13, p1, v4

    goto :goto_0

    .line 60
    :cond_8
    aput v13, p1, v11

    .line 61
    aput v13, p1, v10

    .line 62
    aput v13, p1, v8

    .line 63
    aput v12, p1, v7

    .line 64
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    aput v0, p1, v9

    .line 65
    aput v12, p1, v6

    .line 66
    aput v0, p1, v5

    .line 67
    aput v13, p1, v4

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->p:[I

    aget v0, v0, v10

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 69
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 71
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    array-length p1, p1

    mul-int/2addr p1, v9

    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->s:Ljava/nio/FloatBuffer;

    const v2, 0x88e8

    invoke-static {v1, p1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->D:I

    .line 2
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->B:Z

    .line 3
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->C:I

    .line 4
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->A:I

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->z:I

    .line 5
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    return-void
.end method

.method private c()V
    .locals 3

    const v0, 0x812f

    const/16 v1, 0xde1

    const/16 v2, 0x2802

    .line 1
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 2
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    const/16 v2, 0x2600

    .line 3
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v2, 0x2601

    .line 4
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method


# virtual methods
.method public initNv21TextureIds()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->i:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->i:[I

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 3
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->c()V

    .line 4
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 5
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->i:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->c()V

    .line 7
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 8
    sget-object v0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->VERTEX_SHADER:Ljava/lang/String;

    sget-object v2, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->FRAGMENT_SHADER_NV21:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/arcsoft/avatar2/gl/ShaderManager;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    .line 9
    iget-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->k:[I

    const-string v4, "y_sampler"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v2, v1

    .line 10
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->k:[I

    iget v1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    const-string v2, "uv_sampler"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    .line 11
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    const-string v1, "needFlipY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->m:I

    .line 12
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    const-string v1, "depth_value"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->n:I

    return-void
.end method

.method public initRgbaTextureIds()V
    .locals 3

    .line 1
    sget-object v0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->VERTEX_SHADER:Ljava/lang/String;

    sget-object v1, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->FRAGMENT_SHADER_RGBA8:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/gl/ShaderManager;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    .line 2
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->l:[I

    const-string v2, "rgba_sampler"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 3
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    const-string v1, "needFlipY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->m:I

    .line 4
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    const-string v1, "depth_value"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->n:I

    return-void
.end method

.method public initVao()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->F:F

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->q:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->q:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->p:[I

    const/4 v3, 0x2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 5
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->p:[I

    aget v0, v0, v2

    const v3, 0x8892

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 6
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->w:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->r:Ljava/nio/FloatBuffer;

    .line 9
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->r:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->u:[F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 11
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->r:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->w:I

    iget-object v4, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->r:Ljava/nio/FloatBuffer;

    const v5, 0x88e4

    invoke-static {v3, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 13
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 14
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 15
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->p:[I

    aget v0, v0, v1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 16
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->x:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->s:Ljava/nio/FloatBuffer;

    .line 19
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->s:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->v:[F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 21
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->x:I

    iget-object v4, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->s:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 23
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v10, 0x8

    .line 24
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 25
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 26
    invoke-static {v2}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public renderWithImageBuffer(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->t:I

    const/16 v2, 0x802

    if-eq v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getRowStride()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v3

    mul-int/2addr v3, v1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getYData()[B

    move-result-object v4

    invoke-static {v4, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 5
    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    shr-int/lit8 v4, v3, 0x1

    .line 6
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getYData()[B

    move-result-object v5

    invoke-virtual {v15, v5, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v3, 0x84c0

    .line 9
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 10
    iget-object v3, v0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->i:[I

    aget v2, v3, v2

    const/16 v12, 0xde1

    invoke-static {v12, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    move v6, v1

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v2, 0x84c1

    .line 12
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 13
    iget-object v2, v0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->i:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v12, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v13, 0x0

    const/16 v14, 0x190a

    shr-int/2addr v1, v3

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v2

    shr-int/lit8 v16, v2, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x190a

    const/16 v19, 0x1401

    move-object v2, v15

    move v15, v1

    move-object/from16 v20, v2

    invoke-static/range {v12 .. v20}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->a()V

    return-void
.end method

.method public renderWithTextureId(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->t:I

    const/16 v1, 0x305

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x84c3

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 3
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->a()V

    return-void
.end method

.method public setDepthValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->F:F

    return-void
.end method

.method public setEnableFlipY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->D:I

    return-void
.end method

.method public setMirrorAndDegree(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->B:Z

    .line 2
    iput p2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->C:I

    .line 3
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->v:[F

    array-length p1, p1

    .line 4
    new-array p1, p1, [F

    .line 5
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->a([F)V

    return-void
.end method

.method public setPitches([I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->y:[I

    iget v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->z:I

    aput v2, p1, v0

    aput v2, p1, v1

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->y:[I

    aget v3, p1, v1

    aput v3, v2, v1

    .line 3
    aget p1, p1, v0

    aput p1, v2, v0

    const/4 p1, 0x2

    const/4 v3, 0x3

    .line 4
    aget v0, v2, v0

    aput v0, v2, v3

    aput v0, v2, p1

    .line 5
    iget p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->z:I

    aget v0, v2, v1

    if-ne p1, v0, :cond_1

    return-void

    .line 6
    :cond_1
    aget v0, v2, v1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 7
    aget v1, v2, v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    .line 8
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->v:[F

    const/4 v1, 0x4

    const/4 v2, 0x6

    aput v0, p1, v2

    aput v0, p1, v1

    .line 9
    iput v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->h:F

    return-void
.end method

.method public unInit()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 3
    iput v1, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->o:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->q:[I

    aget v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    .line 6
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->q:[I

    aput v1, v0, v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->i:[I

    aget v2, v0, v1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    .line 8
    invoke-static {v4, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 9
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->i:[I

    aput v1, v0, v3

    aput v1, v0, v1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->j:[I

    aget v2, v0, v1

    if-eqz v2, :cond_3

    .line 11
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 12
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->j:[I

    aput v1, v0, v1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->p:[I

    aget v2, v0, v1

    if-eqz v2, :cond_4

    .line 14
    invoke-static {v4, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 15
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->p:[I

    aput v1, v0, v3

    aput v1, v0, v1

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->b()V

    return-void
.end method
