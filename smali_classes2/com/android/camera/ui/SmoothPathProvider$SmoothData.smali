.class public Lcom/android/camera/ui/SmoothPathProvider$SmoothData;
.super Ljava/lang/Object;
.source "SmoothPathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SmoothPathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmoothData"
.end annotation


# instance fields
.field public bottomLeft:Lcom/android/camera/ui/SmoothPathProvider$CornerData;

.field public bottomRight:Lcom/android/camera/ui/SmoothPathProvider$CornerData;

.field public height:F

.field public ksi:F

.field public smooth:D

.field public topLeft:Lcom/android/camera/ui/SmoothPathProvider$CornerData;

.field public topRight:Lcom/android/camera/ui/SmoothPathProvider$CornerData;

.field public width:F


# direct methods
.method public constructor <init>(FFDF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/ui/SmoothPathProvider$SmoothData;->width:F

    .line 3
    iput p2, p0, Lcom/android/camera/ui/SmoothPathProvider$SmoothData;->height:F

    .line 4
    iput-wide p3, p0, Lcom/android/camera/ui/SmoothPathProvider$SmoothData;->smooth:D

    .line 5
    iput p5, p0, Lcom/android/camera/ui/SmoothPathProvider$SmoothData;->ksi:F

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/camera/ui/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/camera/ui/SmoothPathProvider$CornerData;

    .line 7
    iput-object p1, p0, Lcom/android/camera/ui/SmoothPathProvider$SmoothData;->topRight:Lcom/android/camera/ui/SmoothPathProvider$CornerData;

    .line 8
    iput-object p1, p0, Lcom/android/camera/ui/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/camera/ui/SmoothPathProvider$CornerData;

    .line 9
    iput-object p1, p0, Lcom/android/camera/ui/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/camera/ui/SmoothPathProvider$CornerData;

    return-void
.end method
