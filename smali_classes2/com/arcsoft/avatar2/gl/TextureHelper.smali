.class public Lcom/arcsoft/avatar2/gl/TextureHelper;
.super Ljava/lang/Object;
.source "TextureHelper.java"


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    return-void
.end method


# virtual methods
.method public deleteTexture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    array-length v1, v1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public getTextureId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eqz v2, :cond_0

    .line 2
    aget v0, v0, v1

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error generating texture name."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initTexture()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    aget v1, v0, v2

    if-eqz v1, :cond_0

    .line 3
    aget v0, v0, v2

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v3, 0x2600

    .line 4
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 5
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 6
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error generating texture name."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadTexture(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/TextureHelper;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2
    invoke-static {v2, v1, p1, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 3
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method
