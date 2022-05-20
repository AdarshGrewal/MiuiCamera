.class public Lcom/android/camera/SensorStateManager$4;
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


# static fields
.field public static final CLEAR_FILTER_THRESHOLD:F = 3.0f

.field public static final _DATA_X:I = 0x0

.field public static final _DATA_Y:I = 0x1

.field public static final _DATA_Z:I = 0x2

.field public static final finalAlpha:F = 0.7f

.field public static final firstAlpha:F = 0.8f


# instance fields
.field public finalFilter:[F

.field public firstFilter:[F

.field public final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 2
    iput-object v0, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    return-void
.end method

.method private clearFilter()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    .line 2
    aput v2, v1, v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1}, Lcom/android/camera/SensorStateManager;->access$1500(Lcom/android/camera/SensorStateManager;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAccuracyChanged accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$000(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v5, v2

    const v7, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    aput v3, v1, v2

    const/4 v3, 0x1

    .line 3
    aget v6, v1, v3

    mul-float/2addr v6, v4

    aget v8, v5, v3

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    aput v6, v1, v3

    const/4 v6, 0x2

    .line 4
    aget v8, v1, v6

    mul-float/2addr v8, v4

    aget v4, v5, v6

    mul-float/2addr v4, v7

    add-float/2addr v8, v4

    aput v8, v1, v6

    .line 5
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v5, v4, v2

    const v7, 0x3f333333    # 0.7f

    mul-float/2addr v5, v7

    aget v8, v1, v2

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    aput v5, v4, v2

    .line 6
    aget v5, v4, v3

    mul-float/2addr v5, v7

    aget v8, v1, v3

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    aput v5, v4, v3

    .line 7
    aget v5, v4, v6

    mul-float/2addr v5, v7

    aget v1, v1, v6

    mul-float/2addr v1, v9

    add-float/2addr v5, v1

    aput v5, v4, v6

    .line 8
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->access$1500(Lcom/android/camera/SensorStateManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finalFilter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v7, v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v7, v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " event.values="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, -0x40800000    # -1.0f

    .line 9
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v5, v4, v2

    neg-float v5, v5

    .line 10
    aget v7, v4, v3

    neg-float v7, v7

    .line 11
    aget v4, v4, v6

    neg-float v4, v4

    mul-float v8, v5, v5

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v8, v9

    mul-float/2addr v4, v4

    cmpl-float v4, v8, v4

    if-ltz v4, :cond_1

    const v1, 0x42652ee1

    neg-float v4, v7

    float-to-double v7, v4

    float-to-double v4, v5

    .line 12
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    .line 13
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    .line 14
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v4, v1}, Lcom/android/camera/SensorStateManager;->access$1600(Lcom/android/camera/SensorStateManager;F)F

    move-result v1

    .line 15
    :cond_1
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v4}, Lcom/android/camera/SensorStateManager;->access$1700(Lcom/android/camera/SensorStateManager;)F

    move-result v4

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_3

    .line 16
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v4}, Lcom/android/camera/SensorStateManager;->access$1700(Lcom/android/camera/SensorStateManager;)F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 17
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$4;->clearFilter()V

    .line 18
    :cond_2
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v4, v1}, Lcom/android/camera/SensorStateManager;->access$1702(Lcom/android/camera/SensorStateManager;F)F

    .line 19
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->access$1500(Lcom/android/camera/SensorStateManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SensorEventListenerImpl TYPE_ACCELEROMETER mOrientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v5}, Lcom/android/camera/SensorStateManager;->access$1700(Lcom/android/camera/SensorStateManager;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mIsLyingForGradienter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    .line 20
    invoke-static {v5}, Lcom/android/camera/SensorStateManager;->access$1800(Lcom/android/camera/SensorStateManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->access$1700(Lcom/android/camera/SensorStateManager;)F

    move-result v1

    iget-object v4, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v4}, Lcom/android/camera/SensorStateManager;->access$1800(Lcom/android/camera/SensorStateManager;)Z

    move-result v4

    invoke-interface {v0, v1, v4}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    .line 23
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->isWorking()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    invoke-interface {v0, p1}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 25
    :cond_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v6

    iget-object v0, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aget v0, v0, v6

    sub-float/2addr p1, v0

    .line 27
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    cmpl-double p1, v0, v4

    if-lez p1, :cond_6

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p1, v4, v5}, Lcom/android/camera/SensorStateManager;->access$800(Lcom/android/camera/SensorStateManager;D)V

    :cond_6
    return-void
.end method
