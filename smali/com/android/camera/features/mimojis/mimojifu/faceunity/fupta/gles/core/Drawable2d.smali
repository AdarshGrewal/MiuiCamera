.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;
.super Ljava/lang/Object;
.source "Drawable2d.java"


# static fields
.field public static final COORDS_PER_VERTEX:I = 0x2

.field public static final SIZEOF_FLOAT:I = 0x4

.field public static final TEXTURE_COORD_STRIDE:I = 0x8

.field public static final VERTEXTURE_STRIDE:I = 0x8


# instance fields
.field public mTexCoordArray:Ljava/nio/FloatBuffer;

.field public mVertexArray:Ljava/nio/FloatBuffer;

.field public mVertexCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->updateVertexArray([F)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->updateTexCoordArray([F)V

    return-void
.end method


# virtual methods
.method public texCoordArray()Ljava/nio/FloatBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public updateTexCoordArray([F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public updateVertexArray([F)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 2
    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->mVertexCount:I

    return-void
.end method

.method public vertexArray()Ljava/nio/FloatBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public vertexCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->mVertexCount:I

    return v0
.end method
