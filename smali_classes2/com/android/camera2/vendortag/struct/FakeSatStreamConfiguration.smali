.class public Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;
.super Ljava/lang/Object;
.source "FakeSatStreamConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable;
    }
.end annotation


# static fields
.field public static final TYPE_JPEG_OUTPUT:I = 0x3

.field public static final TYPE_YUV_INPUT:I = 0x1

.field public static final TYPE_YUV_OUTPUT:I = 0x2


# instance fields
.field public final height:I

.field public final type:I

.field public final unused:I

.field public final width:I

.field public final zoomStart:F

.field public final zoomStop:F


# direct methods
.method public constructor <init>(FFIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStart:F

    .line 3
    iput p2, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStop:F

    .line 4
    iput p3, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->type:I

    .line 5
    iput p4, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->width:I

    .line 6
    iput p5, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->height:I

    .line 7
    iput p6, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->unused:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FakeSatStreamConfiguration(zoomStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStart:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zoomStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
