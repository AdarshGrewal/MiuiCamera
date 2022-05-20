.class public Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;
.super Ljava/lang/Object;
.source "SatFusionCalibrationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable;
    }
.end annotation


# instance fields
.field public final data:[B

.field public final size:I

.field public final type:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->type:I

    .line 3
    iput p2, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->size:I

    .line 4
    iput-object p3, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->data:[B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatFusionCalibrationData(type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->data:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
