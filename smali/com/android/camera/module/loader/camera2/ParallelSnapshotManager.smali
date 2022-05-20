.class public Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;
.super Lcom/xiaomi/camera/util/StateMachine;
.source "ParallelSnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;,
        Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;,
        Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;,
        Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraClosingState;,
        Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;,
        Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpeningState;,
        Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;,
        Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;
    }
.end annotation


# static fields
.field public static final MSG_CLOSE_CAMERA:I = 0x2

.field public static final MSG_CLOSE_CAMERA_PROCESSING:I = 0x9

.field public static final MSG_CLOSE_FINISH:I = 0x3

.field public static final MSG_CLOSE_SESSION:I = 0x6

.field public static final MSG_CLOSE_SESSION_PROCESSING:I = 0xb

.field public static final MSG_CREATE_SESSION:I = 0x5

.field public static final MSG_CREATE_SESSION_PROCESSING:I = 0xa

.field public static final MSG_OPEN_CAMERA:I = 0x1

.field public static final MSG_OPEN_CAMERA_PROCESSING:I = 0x8

.field public static final MSG_OPEN_FAILURE:I = 0x7

.field public static final MSG_OPEN_FINISH:I = 0x4

.field public static final MSG_SESSION_CREATE_FAILURE:I = 0xd

.field public static final MSG_SESSION_CREATE_SUCCEED:I = 0xc

.field public static isParallelTagOpen:Z = false

.field public static sInstance:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;


# instance fields
.field public CAMERA_ID_VIRTUAL_PARALLEL:I

.field public final TAG:Ljava/lang/String;

.field public caps:Lcom/android/camera2/CameraCapabilities;

.field public mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field public final mCameraClosingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraClosingState;

.field public mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field public mCameraHandler:Landroid/os/Handler;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field public final mCameraOpenedState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;

.field public final mCameraOpeningState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpeningState;

.field public final mCaptureLock:Ljava/lang/Object;

.field public mCurrentSurfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentUsedProcessorHashCode:I

.field public final mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

.field public mMasterCameraId:Ljava/lang/Integer;

.field public mMaxQueueSize:I

.field public mPendingSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSessionClosingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;

.field public mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

.field public final mSessionCreatedState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;

.field public final mSessionCreatingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;

.field public mTeleParallelSurfaceIndex:I

.field public mUltraTeleParallelSurfaceIndex:I

.field public mUltraWideParallelSurfaceIndex:I

.field public mWideParallelSurfaceIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const-string v0, "ParallelSnapshotManager Start"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/camera/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    .line 4
    new-instance p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpeningState;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpeningState;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraOpeningState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpeningState;

    .line 5
    new-instance p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraOpenedState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;

    .line 6
    new-instance p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraClosingState;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraClosingState;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraClosingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraClosingState;

    .line 7
    new-instance p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionCreatingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;

    .line 8
    new-instance p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionClosingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;

    .line 9
    new-instance p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionCreatedState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;

    .line 10
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mMasterCameraId:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentUsedProcessorHashCode:I

    .line 13
    new-instance p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$1;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$1;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraOpeningState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpeningState;

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraOpenedState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraClosingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraClosingState;

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionCreatingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionClosingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionCreatedState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->setInitialState(Lcom/xiaomi/camera/util/State;)V

    .line 22
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 23
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getParallelVirtualCameraId()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->CAMERA_ID_VIRTUAL_PARALLEL:I

    .line 24
    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    .line 25
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine;->start()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera2/CameraCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->caps:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera2/CameraCapabilities;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->caps:Lcom/android/camera2/CameraCapabilities;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera2/CaptureSessionConfigurations;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Lcom/android/camera2/CaptureSessionConfigurations;)Lcom/android/camera2/CaptureSessionConfigurations;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraOpenedState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mInitState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraClosingState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraClosingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraClosingState;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mPendingSurfaceMap:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionCreatingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1602(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1800(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionClosingState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionCreatedState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpeningState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraOpeningState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpeningState;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->CAMERA_ID_VIRTUAL_PARALLEL:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;
    .locals 3

    const-class v0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->sInstance:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VT Camera Handler Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v2, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->sInstance:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    .line 5
    :cond_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->sInstance:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public closeCamera()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public closeCaptureSession(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getSurfaceFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->closeCaptureSession(Ljava/util/List;)V

    return-void
.end method

.method public closeCaptureSession(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine;->getCurrentState()Lcom/xiaomi/camera/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionCreatedState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "send close session msg"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createCaptureSession(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "send create session msg"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCaptureSurface(I)Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 2
    :try_start_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    iget v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mUltraTeleParallelSurfaceIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    monitor-exit v0

    return-object p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    iget v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mTeleParallelSurfaceIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    monitor-exit v0

    return-object p1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    iget v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mWideParallelSurfaceIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    monitor-exit v0

    return-object p1

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCurrentSurfaceList:Ljava/util/List;

    iget v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mUltraWideParallelSurfaceIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMaxQueueSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mMaxQueueSize:I

    return v0
.end method

.method public getParallelMasterCameraId()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mMasterCameraId:Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isParallelSessionReady()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine;->getCurrentState()Lcom/xiaomi/camera/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionCreatedState:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openCamera()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMaxQueueSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mMaxQueueSize:I

    return-void
.end method

.method public setParallelMasterCameraId(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mMasterCameraId:Ljava/lang/Integer;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setParallelSessionConfig(Lcom/android/camera2/CaptureSessionConfigurations;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    return-void
.end method

.method public setSurfaceIndex(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput p2, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mUltraTeleParallelSurfaceIndex:I

    goto :goto_0

    .line 2
    :cond_1
    iput p2, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mTeleParallelSurfaceIndex:I

    goto :goto_0

    .line 3
    :cond_2
    iput p2, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mWideParallelSurfaceIndex:I

    goto :goto_0

    .line 4
    :cond_3
    iput p2, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->mUltraWideParallelSurfaceIndex:I

    :goto_0
    return-void
.end method
