.class public Lcom/android/gallery3d/ui/ResourceTexture;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "ResourceTexture.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/android/gallery3d/ui/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method


# virtual methods
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
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3
    iget-object v1, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    .line 5
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
