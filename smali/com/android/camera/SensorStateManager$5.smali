.class public Lcom/android/camera/SensorStateManager$5;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$5;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$5;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$000(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->isWorking()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-array v1, v2, [F

    const/4 v2, 0x0

    .line 4
    aget v3, p1, v2

    aput v3, v1, v2

    const/4 v2, 0x1

    .line 5
    aget v3, p1, v2

    aput v3, v1, v2

    const/4 v2, 0x2

    .line 6
    aget v3, p1, v2

    aput v3, v1, v2

    const/4 v2, 0x3

    .line 7
    aget p1, p1, v2

    aput p1, v1, v2

    .line 8
    invoke-interface {v0, v1}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceRotationChanged([F)V

    :cond_2
    :goto_0
    return-void
.end method
