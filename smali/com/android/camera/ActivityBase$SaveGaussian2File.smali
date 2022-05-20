.class public Lcom/android/camera/ActivityBase$SaveGaussian2File;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveGaussian2File"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/ActivityBase$SaveGaussian2File;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase$SaveGaussian2File;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase$SaveGaussian2File;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/camera/Util;->saveLastFrameGaussian2File(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
