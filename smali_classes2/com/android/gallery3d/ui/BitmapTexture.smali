.class public Lcom/android/gallery3d/ui/BitmapTexture;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field public mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>(Z)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 6
    iput-object p1, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
