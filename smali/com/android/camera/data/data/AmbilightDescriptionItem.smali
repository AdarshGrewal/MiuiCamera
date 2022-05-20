.class public final Lcom/android/camera/data/data/AmbilightDescriptionItem;
.super Ljava/lang/Object;
.source "AmbilightDescriptionItem.java"


# static fields
.field public static final RES_NULL:I = -0x1

.field public static final STRING_NULL:I = -0x1


# instance fields
.field public mDescriptionPart1:Ljava/lang/String;

.field public mDescriptionPart2:Ljava/lang/String;

.field public mDisplayNameRes:I

.field public mImageRes:I

.field public mImageRes2:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mDisplayNameRes:I

    .line 9
    iput p2, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mImageRes:I

    .line 10
    iput-object p3, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mDescriptionPart1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mDisplayNameRes:I

    .line 3
    iput p2, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mImageRes:I

    .line 4
    iput p4, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mImageRes2:I

    .line 5
    iput-object p3, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mDescriptionPart1:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mDescriptionPart2:Ljava/lang/String;

    return-void
.end method
