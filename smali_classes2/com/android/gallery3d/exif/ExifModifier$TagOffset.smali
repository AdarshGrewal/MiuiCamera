.class public Lcom/android/gallery3d/exif/ExifModifier$TagOffset;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/exif/ExifModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagOffset"
.end annotation


# instance fields
.field public final mOffset:I

.field public final mTag:Lcom/android/gallery3d/exif/ExifTag;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/exif/ExifTag;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    .line 3
    iput p2, p0, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;->mOffset:I

    return-void
.end method
