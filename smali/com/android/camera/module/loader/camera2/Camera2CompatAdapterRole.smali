.class public Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;
.super Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;
.source "Camera2CompatAdapterRole.java"


# static fields
.field public static final BOKEH_ROLE_ID:I = 0x3d

.field public static final DEPTH_ROLE_ID:I = 0x19

.field public static final FRONT_AUX_ROLE_ID:I = 0x28

.field public static final FRONT_BOKEH_ROLE_ID:I = 0x51

.field public static final FRONT_SAT_ROLE_ID:I = 0x50

.field public static final MACRO_2X_ROLE_ID:I = 0x18

.field public static final MACRO_ROLE_ID:I = 0x16

.field public static final MAIN_BACK_ROLE_ID:I = 0x0

.field public static final MAIN_FRONT_ROLE_ID:I = 0x1

.field public static final PARALLEL_VIRTUAL_ROLE_ID:I = 0x66

.field public static final PHOTO_SAT_ROLE_ID:I = 0x3c

.field public static final PIP_ROLE_ID:I = 0x40

.field public static final TAG:Ljava/lang/String; = "Camera2CompatAdapterRole"

.field public static final TELE_4X_ROLE_ID:I = 0x17

.field public static final TELE_ROLE_ID:I = 0x14

.field public static final ULTRA_WIDE_BOKEH_ROLE_ID:I = 0x3f

.field public static final ULTRA_WIDE_ROLE_ID:I = 0x15

.field public static final VIDEO_SAT_ROLE_ID:I = 0x3e

.field public static final VIRTUAL_BACK_ROLE_ID:I = 0x64

.field public static final VIRTUAL_FRONT_ROLE_ID:I = 0x65


# instance fields
.field public volatile mCameraRoleIdMap:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;-><init>()V

    return-void
.end method

.method private declared-synchronized dumpCameraIds()V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v4

    .line 8
    iget-object v6, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v6, v0}, Lcom/android/camera2/CameraCapabilities;->getViewAngle(Z)F

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 10
    sget-object v9, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "role: %3d (%5.1f\u00b0) <-> %2d = %s"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v11, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v7

    aput-object v4, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11
    :cond_1
    sget-object v4, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "role: %3d (%5.1f\u00b0) <-> %2d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v7

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :cond_2
    sget-object v2, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v4, "mCapabilities.get(id)=null id=%s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 13
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasUWBokehCamera()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: hasBokehCamera(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initCameraCapabilitiesAsync(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraManager;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/CameraCapabilities;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "E: initCameraCapabilitiesAsync()"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    aget-object v5, p2, v3

    .line 3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v6, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    .line 6
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 7
    :try_start_2
    invoke-virtual {p0, v5, p1}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->initCameraCapabilitiesByCameraId(ILandroid/hardware/camera2/CameraManager;)Lcom/android/camera2/CameraCapabilities;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 9
    :cond_3
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 10
    :try_start_5
    iput-boolean v4, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->isCapabilitiesInitFinished:Z

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 12
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 13
    :try_start_6
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string p2, "X: initCameraCapabilitiesAsync()"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object p1

    :catchall_1
    move-exception p1

    .line 15
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to init CameraCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->reset()V

    return-object v0
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->initCameraCapabilitiesAsync(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)Landroid/util/SparseArray;

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->dumpCameraIds()V

    return-void
.end method

.method public declared-synchronized getAuxCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getAuxCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAuxFrontCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getAuxFrontCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getBokehCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehDepthCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getBokehDepthCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehFrontCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getBokehFrontCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x51

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCapabilities()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/CameraCapabilities;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v1, "getCapabilities(): Ready to get this lock."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->isCapabilitiesInitFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to getCapabilities(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v1, "getCapabilities(): unlock this lock."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/camera/dualvideo/util/RenderSourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->getUltraWideCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->getMainBackCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->getFrontCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getFrontCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getFrontCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMainBackCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getMainBackCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParallelVirtualCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getParallelVirtualCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRoleIdByActualId(I)I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v0, "Warning: getRoleIdByActualId(): #init() failed."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez p1, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSATCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getSATCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSATFrontCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getSATFrontCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandaloneMacroCameraId()I
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getStandaloneMacroCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v4, 0x18

    .line 5
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraTeleCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getUltraTeleCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraWideBokehCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getUltraWideBokehCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraWideCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getUltraWideCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoSATCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getVideoSATCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualBackCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getVirtualBackCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualFrontCameraId()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getVirtualFrontCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasBokehCamera()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: hasBokehCamera(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasPortraitCamera()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->hasBokehCamera()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized hasSATCamera()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: hasSATCamera(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasTeleCamera()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->getAuxCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->getUltraTeleCameraId()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasUWPortraitCamera()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->hasUWBokehCamera()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/hardware/camera2/CameraManager;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v1, "E: init()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->reset()V

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 4
    sget-object v2, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All available camera ids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    .line 7
    new-instance v1, Landroid/util/SparseIntArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    .line 8
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 11
    sget-object v6, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAMERA_ROLE_IDS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v4, v6}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_0

    .line 12
    array-length v4, v6

    move v7, v2

    :goto_1
    if-ge v7, v4, :cond_2

    aget v8, v6, v7

    .line 13
    iget-object v9, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 14
    :cond_0
    sget-object v6, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->CAMERA_ROLE_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v4, v6}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_2

    .line 15
    :cond_1
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 16
    :goto_2
    iget-object v6, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 17
    :catch_0
    sget-object v5, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "non-integer camera id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :try_start_4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0OO/OooO00o;

    invoke-direct {v2, p0, p1, v0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0OO/OooO00o;-><init>(Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 20
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->updateVirtualCameraIds()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 23
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p1

    .line 24
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to init Camera2RoleContainer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->reset()V

    .line 26
    :cond_4
    :goto_4
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v0, "X: init()"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isPartSAT()Z
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v1, "E: reset()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCurrentOpenedCameraId:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->isCapabilitiesInitFinished:Z

    .line 6
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v1, "X: reset()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
