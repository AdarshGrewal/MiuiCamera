.class public abstract Lcom/android/gallery3d/ui/CanvasTexture;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "CanvasTexture.java"


# instance fields
.field public mCanvas:Landroid/graphics/Canvas;

.field public final mConfig:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>()V

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/ui/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method public abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.end method

.method public onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/gallery3d/ui/BasicTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onGetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/ui/CanvasTexture;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
