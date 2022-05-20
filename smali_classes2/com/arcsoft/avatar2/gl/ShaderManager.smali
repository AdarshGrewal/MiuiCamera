.class public Lcom/arcsoft/avatar2/gl/ShaderManager;
.super Ljava/lang/Object;
.source "ShaderManager.java"


# static fields
.field public static final a:Ljava/lang/String; = "Arc_ShaderManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/arcsoft/avatar2/gl/ShaderManager;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    const-string v1, "Arc_ShaderManager"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "create shader error, shader type="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , error="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 5
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v3, 0x8b81

    .line 6
    invoke-static {p0, v3, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 7
    aget p1, p1, v2

    if-nez p1, :cond_1

    .line 8
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createShader shader = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  error: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v2

    :cond_1
    return p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid shader type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "vertext_shader"

    return-object p0

    :pswitch_1
    const-string p0, "fragment_shader"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8b30
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    const-string v1, "Arc_ShaderManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "create program error ,error="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const v3, 0x8b31

    .line 3
    invoke-static {v3, p0}, Lcom/arcsoft/avatar2/gl/ShaderManager;->a(ILjava/lang/String;)I

    move-result p0

    const v3, 0x8b30

    .line 4
    invoke-static {v3, p1}, Lcom/arcsoft/avatar2/gl/ShaderManager;->a(ILjava/lang/String;)I

    move-result p1

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 6
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x8b82

    .line 8
    invoke-static {v0, v4, v3, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 9
    aget v3, v3, v2

    if-nez v3, :cond_2

    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createProgram error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 13
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 14
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v2

    :cond_2
    return v0

    .line 15
    :cond_3
    :goto_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 16
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 17
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v2
.end method
