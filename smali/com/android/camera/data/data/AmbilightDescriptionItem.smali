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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mDisplayNameRes:I

    iput p2, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mImageRes:I

    iput-object p3, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mDescriptionPart1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mDisplayNameRes:I

    iput p2, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mImageRes:I

    iput p4, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mImageRes2:I

    iput-object p3, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mDescriptionPart1:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/camera/data/data/AmbilightDescriptionItem;->mDescriptionPart2:Ljava/lang/String;

    return-void
.end method
