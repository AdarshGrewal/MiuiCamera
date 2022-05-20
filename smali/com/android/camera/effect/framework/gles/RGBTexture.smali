.class public Lcom/android/camera/effect/framework/gles/RGBTexture;
.super Lcom/android/gallery3d/ui/RawTexture;
.source "RGBTexture.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RGBTexture"

.field public static final sTextureId:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/android/camera/effect/framework/gles/RGBTexture;->sTextureId:[I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "RGBTexture"

    const-string v0, "lost the content due to context change"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public prepare(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 1
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    aget v4, v2, v3

    const/16 v5, 0xde1

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v4, 0x812f

    const/16 v6, 0x2802

    .line 3
    invoke-static {v5, v6, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2803

    .line 4
    invoke-static {v5, v6, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v4, 0x46180400    # 9729.0f

    const/16 v6, 0x2801

    .line 5
    invoke-static {v5, v6, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2800

    .line 6
    invoke-static {v5, v6, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v11

    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1907

    const/4 v12, 0x0

    const/16 v13, 0x1907

    const/16 v14, 0x1401

    const/4 v15, 0x0

    .line 8
    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepare textureSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RGBTexture"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    aget v2, v2, v3

    iput v2, v0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    .line 11
    iput v1, v0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 12
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public yield()V
    .locals 0

    return-void
.end method
