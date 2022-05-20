.class public Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;
.super Ljava/lang/Object;
.source "MarshalQueryableDxoAsdScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASDScene"
.end annotation


# instance fields
.field public confident:F

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    .line 3
    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->confident:F

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->confident:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->value:I

    iget v0, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->value:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->confident:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
