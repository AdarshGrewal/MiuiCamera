.class public abstract Lcom/android/gallery3d/ui/UploadedTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Texture"

.field public static final UPLOAD_LIMIT:I = 0x64

.field public static sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

.field public static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static sCropRect:[F

.field public static sTextureId:[I

.field public static sUploadedCount:I


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBorder:I

.field public mContentValid:Z

.field public mIsPremultiplied:Z

.field public mIsUploading:Z

.field public mOpaque:Z

.field public mThrottled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;-><init>(Lcom/android/gallery3d/ui/UploadedTexture$1;)V

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 3
    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 4
    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1, v0, v0}, Lcom/android/gallery3d/ui/BasicTexture;-><init>(Lcom/android/gallery3d/ui/GLCanvas;II)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsUploading:Z

    .line 5
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsPremultiplied:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/BasicTexture;->setBorder(Z)V

    .line 9
    iput v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsPremultiplied:Z

    .line 4
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6
    iget v2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    .line 2
    iput-boolean p0, v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    .line 3
    iput-object p1, v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 4
    iput p2, v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    .line 5
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 6
    invoke-static {v1, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v1, p0

    .line 8
    sget-object p0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->clone()Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static resetUploadLimit()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 2
    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v8

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v7

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-gt v0, v8, :cond_0

    if-gt v9, v7, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 6
    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 7
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    iget v3, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    int-to-float v3, v3

    aput v3, v2, v4

    .line 8
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    iget v3, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int/2addr v3, v9

    int-to-float v3, v3

    aput v3, v2, v5

    .line 9
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x2

    int-to-float v10, v0

    aput v10, v2, v3

    .line 10
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x3

    neg-int v10, v9

    int-to-float v10, v10

    aput v10, v2, v3

    .line 11
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 12
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    aget v2, v2, v4

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v2, 0x8b9d

    .line 13
    sget-object v10, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    invoke-static {v3, v2, v10, v4}, Landroid/opengl/GLES20;->glTexParameterfv(II[FI)V

    const/16 v2, 0x2802

    const v10, 0x812f

    .line 14
    invoke-static {v3, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 15
    invoke-static {v3, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2801

    const v10, 0x46180400    # 9729.0f

    .line 16
    invoke-static {v3, v2, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    .line 17
    invoke-static {v3, v2, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    if-ne v0, v8, :cond_1

    if-ne v9, v7, :cond_1

    .line 18
    invoke-static {v3, v4, v6, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    move v10, v4

    move v4, v5

    goto/16 :goto_2

    .line 19
    :cond_1
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v19

    .line 20
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v20

    .line 21
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move/from16 v12, v19

    move v13, v8

    move v14, v7

    move/from16 v16, v19

    move/from16 v17, v20

    .line 22
    invoke-static/range {v10 .. v18}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0xde1

    const/4 v10, 0x0

    .line 23
    iget v11, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    iget v12, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    move-object v15, v3

    move v3, v10

    move v10, v4

    move v4, v11

    move v14, v5

    move v5, v12

    move v13, v7

    move/from16 v7, v19

    move v12, v8

    move/from16 v8, v20

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 24
    iget v2, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    if-lez v2, :cond_2

    .line 25
    invoke-static {v14, v15, v13}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v11, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v12

    move v12, v3

    move v3, v13

    move v13, v4

    move v4, v14

    move v14, v5

    move-object v5, v15

    move-object v15, v2

    move/from16 v16, v19

    move/from16 v17, v20

    .line 26
    invoke-static/range {v11 .. v17}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 27
    invoke-static {v10, v5, v6}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v15

    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v19

    move/from16 v17, v20

    .line 28
    invoke-static/range {v11 .. v17}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    goto :goto_1

    :cond_2
    move v6, v12

    move v3, v13

    move v4, v14

    move-object v5, v15

    .line 29
    :goto_1
    iget v2, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int/2addr v2, v0

    if-ge v2, v6, :cond_3

    .line 30
    invoke-static {v4, v5, v3}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v15

    const/16 v11, 0xde1

    const/4 v12, 0x0

    .line 31
    iget v2, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v13, v2, v0

    const/4 v14, 0x0

    move/from16 v16, v19

    move/from16 v17, v20

    invoke-static/range {v11 .. v17}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 32
    :cond_3
    iget v0, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int/2addr v0, v9

    if-ge v0, v3, :cond_4

    .line 33
    invoke-static {v10, v5, v6}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v15

    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 34
    iget v0, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v14, v0, v9

    move/from16 v16, v19

    move/from16 v17, v20

    invoke-static/range {v11 .. v17}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_4
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 36
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 37
    sget-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    aget v0, v0, v10

    iput v0, v1, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    .line 38
    iput v4, v1, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 39
    iput-boolean v4, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    return-void

    :catchall_0
    move-exception v0

    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    throw v0

    :cond_5
    const/4 v0, -0x1

    .line 41
    iput v0, v1, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Texture load fail, no bitmap"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBitmapData(Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x64

    .line 3
    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    return v0
.end method

.method public invalidateContent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 4
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public isPremultiplied()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsPremultiplied:Z

    :goto_0
    return v0
.end method

.method public isUploading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsUploading:Z

    return v0
.end method

.method public onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z

    move-result p1

    return p1
.end method

.method public abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 2
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    :cond_0
    return-void
.end method

.method public setIsUploading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsUploading:Z

    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method public setThrottled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    return-void
.end method

.method public updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean p1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    if-nez p1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 6
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 7
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    const/16 p1, 0xde1

    .line 8
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    .line 9
    iget v5, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    move v4, v5

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 10
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 11
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    :cond_2
    :goto_0
    return-void
.end method
