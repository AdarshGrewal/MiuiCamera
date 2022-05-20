.class public Lcom/android/camera/panorama/GyroscopeRoundDetector;
.super Lcom/android/camera/panorama/RoundDetector;
.source "GyroscopeRoundDetector.java"


# static fields
.field public static final NS2S:F = 1.0E-9f


# instance fields
.field public mLastTimestamp:F

.field public mRadianLandscape:F

.field public mRadianPortrait:F

.field public mTargetDegree:F

.field public mUseSensor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/panorama/RoundDetector;-><init>()V

    const/high16 v0, 0x43b40000    # 360.0f

    .line 2
    iput v0, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mTargetDegree:F

    return-void
.end method


# virtual methods
.method public detect()Z
    .locals 10

    .line 1
    sget-object v0, Lcom/android/camera/panorama/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/panorama/RoundDetector;->mIsEndOk:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    iget v1, p0, Lcom/android/camera/panorama/RoundDetector;->mDirection:I

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 5
    iget v1, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mTargetDegree:F

    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    move v2, v3

    :cond_1
    monitor-exit v0

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x4076800000000000L    # 360.0

    iget v1, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mTargetDegree:F

    float-to-double v8, v1

    sub-double/2addr v6, v8

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_3

    move v2, v3

    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/panorama/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mUseSensor:Z

    if-nez v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    iget v1, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mLastTimestamp:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcom/android/camera/Util;->isEqualsZero(D)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 7
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v1, v4

    iget v4, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mLastTimestamp:F

    sub-float/2addr v1, v4

    const v4, 0x3089705f    # 1.0E-9f

    mul-float/2addr v1, v4

    .line 8
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    .line 9
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    .line 10
    iget v6, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mRadianLandscape:F

    mul-float/2addr v4, v1

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mRadianLandscape:F

    .line 11
    iget v4, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mRadianPortrait:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mRadianPortrait:F

    .line 12
    :cond_2
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v4

    iput p1, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mLastTimestamp:F

    .line 13
    iget p1, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mRadianLandscape:F

    invoke-static {p1}, Lcom/android/camera/panorama/RoundDetector;->radianToDegree(F)I

    move-result p1

    .line 14
    iget v1, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mRadianPortrait:F

    invoke-static {v1}, Lcom/android/camera/panorama/RoundDetector;->radianToDegree(F)I

    move-result v1

    if-gtz p1, :cond_3

    .line 15
    iget v4, p0, Lcom/android/camera/panorama/RoundDetector;->mDirection:I

    if-ne v4, v3, :cond_3

    add-int/lit16 p1, p1, 0x168

    :cond_3
    if-gtz v1, :cond_4

    .line 16
    iget v4, p0, Lcom/android/camera/panorama/RoundDetector;->mDirection:I

    if-ne v4, v3, :cond_4

    add-int/lit16 v1, v1, 0x168

    .line 17
    :cond_4
    iget-boolean v4, p0, Lcom/android/camera/panorama/RoundDetector;->isLandscape:Z

    if-eqz v4, :cond_5

    move v4, p1

    goto :goto_0

    :cond_5
    move v4, v1

    .line 18
    :goto_0
    iget-boolean v5, p0, Lcom/android/camera/panorama/RoundDetector;->isLandscape:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/camera/panorama/RoundDetector;->mCurrentDegreeLandscape:I

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/android/camera/panorama/RoundDetector;->mCurrentDegreePortrait:I

    .line 19
    :goto_1
    iget v6, p0, Lcom/android/camera/panorama/RoundDetector;->mDirection:I

    const/16 v7, 0xb4

    if-eqz v6, :cond_9

    if-eqz v5, :cond_8

    if-lt v5, v4, :cond_7

    sub-int/2addr v4, v5

    .line 20
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v7, :cond_7

    goto :goto_2

    :cond_7
    move v4, v2

    goto :goto_3

    :cond_8
    :goto_2
    move v4, v3

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_8

    if-gt v5, v4, :cond_7

    sub-int/2addr v4, v5

    .line 21
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v7, :cond_7

    goto :goto_2

    :goto_3
    if-eqz v4, :cond_a

    .line 22
    iput p1, p0, Lcom/android/camera/panorama/RoundDetector;->mCurrentDegreeLandscape:I

    .line 23
    iput v1, p0, Lcom/android/camera/panorama/RoundDetector;->mCurrentDegreePortrait:I

    .line 24
    :cond_a
    iget-boolean p1, p0, Lcom/android/camera/panorama/RoundDetector;->mIsEndOk:Z

    if-nez p1, :cond_c

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result p1

    if-gt v7, p1, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/panorama/RoundDetector;->currentDegree()I

    move-result p1

    const/16 v1, 0xbe

    if-gt p1, v1, :cond_b

    move v2, v3

    :cond_b
    iput-boolean v2, p0, Lcom/android/camera/panorama/RoundDetector;->mIsEndOk:Z

    .line 26
    :cond_c
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setStartPosition(IIFFZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 1
    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/panorama/RoundDetector;->isLandscape:Z

    .line 2
    sget-object p1, Lcom/android/camera/panorama/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter p1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iput v2, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mLastTimestamp:F

    .line 4
    iput v2, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mRadianLandscape:F

    .line 5
    iput v2, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mRadianPortrait:F

    .line 6
    iput v1, p0, Lcom/android/camera/panorama/RoundDetector;->mCurrentDegreeLandscape:I

    .line 7
    iput v1, p0, Lcom/android/camera/panorama/RoundDetector;->mCurrentDegreePortrait:I

    .line 8
    iput p2, p0, Lcom/android/camera/panorama/RoundDetector;->mDirection:I

    .line 9
    iput-boolean v1, p0, Lcom/android/camera/panorama/RoundDetector;->mIsEndOk:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mUseSensor:Z

    if-nez p5, :cond_3

    .line 11
    iget-boolean p2, p0, Lcom/android/camera/panorama/RoundDetector;->isLandscape:Z

    const/high16 p5, 0x41a00000    # 20.0f

    const/high16 v0, 0x43b40000    # 360.0f

    if-eqz p2, :cond_2

    sub-float/2addr v0, p3

    add-float/2addr v0, p5

    .line 12
    iput v0, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mTargetDegree:F

    goto :goto_2

    :cond_2
    sub-float/2addr v0, p4

    add-float/2addr v0, p5

    .line 13
    iput v0, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mTargetDegree:F

    .line 14
    :cond_3
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/panorama/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/panorama/GyroscopeRoundDetector;->mUseSensor:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
