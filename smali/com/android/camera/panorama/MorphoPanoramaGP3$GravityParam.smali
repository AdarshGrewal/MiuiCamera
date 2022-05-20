.class public Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/panorama/MorphoPanoramaGP3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GravityParam"
.end annotation


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;->x:D

    .line 3
    iput-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;->y:D

    .line 4
    iput-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;->z:D

    return-void
.end method


# virtual methods
.method public copyInstance()Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;

    invoke-direct {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;->x:D

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;->x:D

    .line 3
    iget-wide v1, p0, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;->y:D

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;->y:D

    .line 4
    iget-wide v1, p0, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;->z:D

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$GravityParam;->z:D

    return-object v0
.end method
