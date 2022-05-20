.class public Lcom/android/camera2/vendortag/struct/SatZoomSplineData;
.super Ljava/lang/Object;
.source "SatZoomSplineData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable;
    }
.end annotation


# instance fields
.field public final size:B

.field public final supportOutZoomAnimate:B

.field public final times:[F

.field public final totalsize:B

.field public final type:B

.field public final zooms:[F


# direct methods
.method public constructor <init>(BBBB[F[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->type:B

    .line 3
    iput-byte p2, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->size:B

    .line 4
    iput-byte p3, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->totalsize:B

    .line 5
    iput-object p5, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->zooms:[F

    .line 6
    iput-object p6, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->times:[F

    .line 7
    iput-byte p4, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->supportOutZoomAnimate:B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatZoomSplineData(type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->size:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalsize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->totalsize:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportOutZoomAnimate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->supportOutZoomAnimate:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zooms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->zooms:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->times:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
