.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;
.implements Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;
.implements Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/android/camera/customization/ThemeModeManager$ThemeModeInterface;
.implements Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$CameraRunnable;,
        Lcom/android/camera/Camera$HibernateRunnable;,
        Lcom/android/camera/Camera$LogThread;,
        Lcom/android/camera/Camera$WatchDogThread;,
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$AdjBoostCallable;,
        Lcom/android/camera/Camera$ScreenSlideObserver;
    }
.end annotation


# static fields
.field public static final CTA_REQUEST_AGREE:I = 0x1

.field public static final CTA_REQUEST_CODE:I = 0xc8

.field public static final CTA_REQUEST_QUIT:I = 0x0

.field public static final DIALOG_FRAGMENT_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_REQUEST_CODE:I = 0x1

.field public static final PERMISSION_RESULT_CODE:I = 0x904

.field public static final REPEAT_KEY_EVENT_GAP:I = 0xfa


# instance fields
.field public final ACTION_CREATE_ACTIVITY:Ljava/lang/String;

.field public final ACTION_RESUME_ACTIVITY:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

.field public mCamera2OpenOnSubscribe:Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

.field public mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

.field public mCameraOpenResult:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCameraPendingSetupDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field public mCameraSetupConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

.field public mCatchUnTapableEvent:Z

.field public mCurrentTempStage:I

.field public mDebugThread:Lcom/android/camera/Camera$LogThread;

.field public mDelayReleaseCamera:Z

.field public mDidRegister:Z

.field public mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mFeatureAutoDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mFirstOrientationArrived:Z

.field public mGalleryMessenger:Landroid/os/Messenger;

.field public mHasBeenSetupOnFocusChanged:Z

.field public mHasFocus:Z

.field public mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field public mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

.field public volatile mIntentPhotoDone:Z

.field public mIsGalleryServiceBound:Z

.field public mIsLunchFromAutoTest:Z

.field public mIsModeSwitched:Z

.field public mIsNewCTAShowing:Z

.field public mIsScreenSlideOff:Z

.field public mLastIgnoreKey:I

.field public mLastKeyDownEventTime:J

.field public mLastKeyUpEventTime:J

.field public mLensApi:Lcom/google/lens/sdk/LensApi;

.field public mLockStreamOrientation:Z

.field public mLplDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mMainContentProtocolForDispatchTouch:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

.field public mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

.field public mMoreModePopupController:Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

.field public mNeedReUpdateThermal:Z

.field public mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field public mPermissionGuideDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

.field public mRemoteControlConnected:Z

.field public mRemoteDeviceId:I

.field public mSDReceiver:Landroid/content/BroadcastReceiver;

.field public mScreenSlideStatusObserver:Lcom/android/camera/Camera$ScreenSlideObserver;

.field public mSensorStateManager:Lcom/android/camera/SensorStateManager;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field public mStartControl:Lcom/android/camera/module/loader/StartControl;

.field public mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

.field public mSupportOrientation:Z

.field public mThermalNotificationListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

.field public volatile mTick:I

.field public mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field public mWatchDog:Ljava/lang/Thread;

.field public newbieDialogFragmentTag:Ljava/lang/String;

.field public final tickerRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sget-object v1, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Camera;->DIALOG_FRAGMENT_TAGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createActivity@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->ACTION_CREATE_ACTIVITY:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeActivity@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->ACTION_RESUME_ACTIVITY:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    .line 6
    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    .line 9
    new-instance v2, Lcom/android/camera/Camera$1;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    const/4 v3, 0x0

    .line 11
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsGalleryServiceBound:Z

    .line 12
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    .line 13
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsLunchFromAutoTest:Z

    .line 14
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mNeedReUpdateThermal:Z

    .line 15
    iput v0, p0, Lcom/android/camera/Camera;->mCurrentTempStage:I

    .line 16
    new-instance v4, LOooO00o/OooO0O0/OooO00o/OooO0o0;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO00o/OooO0o0;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mThermalNotificationListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

    .line 17
    new-instance v4, Lcom/android/camera/Camera$2;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mCameraSetupConsumer:Lio/reactivex/functions/Consumer;

    .line 18
    new-instance v4, LOooO00o/OooO0O0/OooO00o/OooO0Oo;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO00o/OooO0Oo;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mCameraOpenResult:Lio/reactivex/functions/BiFunction;

    .line 19
    new-instance v4, Lcom/android/camera/Camera$4;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 20
    new-instance v4, Lcom/android/camera/Camera$5;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    new-instance v4, Lcom/android/camera/Camera$6;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mSDReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mLockStreamOrientation:Z

    .line 24
    iput-object v2, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    .line 25
    iput v0, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/Camera;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->dismissDialogFragment(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/Camera;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/Camera;->mTick:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/Camera;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/Camera;->mTick:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/Camera;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->showCameraError(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/Camera;)Lcom/android/camera/fragment/BaseFragmentDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/Camera;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/camera/Camera;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    return-void
.end method

.method public static synthetic access$1502(Lcom/android/camera/Camera;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/Camera;->mGalleryMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method public static synthetic access$1600(Lcom/android/camera/Camera;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->checkPermissionAndCTA(Z)V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/camera/Camera;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/android/camera/Camera;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/Camera;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/Camera;->mHasFocus:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/Camera;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/Camera;->mFirstOrientationArrived:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/android/camera/Camera;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mFirstOrientationArrived:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/Camera;->onDisplayRotationChanged()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/Camera;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/Camera;)Lcom/android/camera/CommonRotationLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    return-object p0
.end method

.method private allowOpenWhenPaused(Lcom/android/camera/module/loader/StartControl;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private bindServices()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.gallery"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsGalleryServiceBound:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "bindServices error."

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private boostParallelServiceAdj()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->adjBoost()V

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->isPendingSave()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->adjBoost()V

    return-void

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    instance-of v1, v0, Lcom/android/camera/module/VideoModule;

    if-eqz v1, :cond_6

    .line 8
    check-cast v0, Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is4KCamcorder()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    :cond_5
    invoke-static {}, Lcom/android/camera/Util;->adjBoost()V

    return-void

    .line 11
    :cond_6
    new-instance v0, Lcom/android/camera/Camera$AdjBoostCallable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/Camera$AdjBoostCallable;-><init>(Lcom/android/camera/Camera$1;)V

    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->addStickyCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method private checkPermissionAndCTA(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstLocationUseHint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/ActivityBase;->mRequestDismissKeyguarding:Z

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mRequestDismissKeyguarding:Z

    .line 7
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v0, Lcom/android/camera/Camera$10;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$10;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, p0, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/android/camera/Util;->isTurnOnInvisibleMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-static {p0}, Lcom/android/camera/Util;->showInvisibleModeDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-direct {p0}, Lcom/android/camera/Camera;->requestCtaDialog()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    xor-int/2addr p1, v1

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->requestCameraLaunchPermissions(Z)Z

    goto :goto_0

    .line 15
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstLocationUseHint()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 p1, 0x65

    .line 16
    invoke-static {p0, p1}, Lcom/android/camera/permission/PermissionManager;->requestCameraPermissions(Landroid/app/Activity;I)Z

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onCreate(): prefixCamera2Setup"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-direct {p0}, Lcom/android/camera/Camera;->prefixCamera2Setup()V

    :cond_7
    :goto_0
    return-void
.end method

.method private closeCameraSetup()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "closeCameraSetup: CameraPendingSetupDisposable: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 5
    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "closeCameraSetup: CameraSetupDisposable: X"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 9
    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private createNewModule(Lcom/android/camera/module/loader/StartControl;)V
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x3a1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0xfd

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setTransMode(I)Lcom/android/camera/module/loader/StartControl;

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->getModuleByIndex(I)Lcom/android/camera/module/entry/IModuleEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/entry/IModuleEntry;->getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;

    move-result-object v1

    .line 9
    invoke-interface {v0}, Lcom/android/camera/module/entry/IModuleEntry;->getModule()Lcom/android/camera/module/Module;

    move-result-object v2

    .line 10
    invoke-interface {v0}, Lcom/android/camera/module/entry/IModuleEntry;->getModuleDevice()Lcom/android/camera/features/mode/IModuleDevice;

    move-result-object v0

    .line 11
    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    iget v4, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-interface {v2, p0, p1, v3, v4}, Lcom/android/camera/module/Module;->onModuleCreated(Lcom/android/camera/Camera;Lcom/android/camera/module/loader/StartControl;II)V

    .line 12
    invoke-interface {v2, v0}, Lcom/android/camera/module/Module;->attachModuleDevice(Lcom/android/camera/features/mode/IModuleDevice;)V

    .line 13
    invoke-interface {v0, v2}, Lcom/android/camera/features/mode/IModuleDevice;->attachModule(Lcom/android/camera/module/Module;)V

    .line 14
    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 15
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModeUI:Lcom/android/camera/fragment/modeui/IModeUI;

    .line 16
    invoke-interface {v1}, Lcom/android/camera/fragment/modeui/IModeUI;->getFragmentInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/android/camera/module/loader/StartControl;->getFeatureDetail()Lcom/android/camera/module/loader/StartControlFeatureDetail;

    move-result-object p1

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 19
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 20
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v3

    .line 21
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/16 v4, 0xf0

    if-ne v2, v4, :cond_1

    .line 22
    invoke-virtual {p1, v3}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->hideFragment(I)V

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1, v3, v2}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->addFragmentInfo(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 24
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid module index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dismissDialogFragment(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    const-class v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private getWCGConfig(I)I
    .locals 1

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xab

    if-eq p1, v0, :cond_0

    const/16 v0, 0xad

    if-eq p1, v0, :cond_0

    const/16 v0, 0xaf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xba

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private hideHibernationFragment()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Hibernation"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private initDebugInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0103

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->modeChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Touch event intercept caz mode change."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v2

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupMoreStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreModePopupController:Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-nez v0, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xa01

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMoreModePopupController:Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreModePopupController:Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_5

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xac

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object v0, p0, Lcom/android/camera/Camera;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainContentProtocolForDispatchTouch:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-nez v0, :cond_7

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xa6

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMainContentProtocolForDispatchTouch:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainContentProtocolForDispatchTouch:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_8

    .line 16
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainContentProtocolForDispatchTouch:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isSplitFocusExposureDown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_9

    instance-of v3, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v3, :cond_9

    .line 20
    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 21
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isLongPressedRecording()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x106

    if-ne v3, v4, :cond_9

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 24
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/module/Camera2Module;->onSingleTapUp(IIZ)V

    .line 25
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_a

    .line 26
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_a
    return v2
.end method

.method private isFromKeyguard()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 3
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 4
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFromKeyguard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isFromOneShotKeyPressed(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    const-wide/16 v4, 0xfa

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    .line 2
    iget-wide v1, p0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    iget-wide v3, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return v3

    .line 3
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFromOneShotKeyPressed: lastUpTIme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " | eventTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " isKeyEventOrderWrong: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isInDisplayRect(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method private isScreenOn()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isStreamingRequested(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->oo0oOO0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isLaunchByMiWatch(Landroid/content/Intent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCastIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private onDisplayRotationChanged()V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RotateHint"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->animateOut(I)V

    :cond_1
    return-void
.end method

.method private parseLocationPermission([Ljava/lang/String;[I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/camera/permission/PermissionManager;->isContainLocationPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRequestPermissionsResult: is location granted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->updateRecordLocationPreference(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result p1

    .line 7
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    :cond_0
    return-void
.end method

.method private preCreateMediaRecorder(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preCreateMediaRecorder: orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/module/video/MediaRecorderCreator;->getInstance()Lcom/android/camera/module/video/MediaRecorderCreator;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p2}, Lcom/android/camera/module/video/MediaRecorderCreator;->createFutureMediaRecorder(Lcom/android/camera/Camera;III)Lcom/android/camera/module/video/CreateRecorderResult;

    return-void
.end method

.method private prefixCamera2Setup()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v8

    .line 2
    new-instance v0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/CameraScreenNail;Landroid/content/Intent;IZZ)V

    .line 5
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private profileStartUpActions()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->ACTION_CREATE_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string v1, "createActivity2openCamera"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    return-void
.end method

.method private final registerReceiver()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.REBOOT"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.camera.action.SPEECH_SHUTTER"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.action.VOICE_COMMAND"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.xiaomi.camera.AUX_CONTROL"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    return-void
.end method

.method private registerSDReceiver()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/Camera;->mSDReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseAll(ZIZZ)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseAll: releaseDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCurrentModuleAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", releaseImmediate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFinishing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/android/camera/module/Module;->setDeparted()V

    .line 11
    :cond_0
    new-instance p1, Lcom/android/camera/Camera$CameraRunnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p3, p4}, Lcom/android/camera/Camera$CameraRunnable;-><init>(Ljava/lang/ref/WeakReference;ZZ)V

    .line 12
    sget-object p3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, v0, v1, p2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 13
    iget-object p1, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    invoke-virtual {p1}, Lcom/android/camera/module/impl/ImplFactory;->detachModulePersistent()V

    return-void
.end method

.method private requestCameraLaunchPermissions(Z)Z
    .locals 14

    .line 1
    invoke-static {p1}, Lcom/android/camera/permission/PermissionManager;->getCameraLaunchPermissionsState(Z)Landroid/util/ArrayMap;

    move-result-object p1

    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_9

    .line 3
    iget-object v1, p0, Lcom/android/camera/Camera;->mPermissionGuideDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/Camera;->mPermissionGuideDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/android/camera/Util;->startFromKeyGuard(Landroid/app/Activity;)Z

    move-result v1

    const v4, 0x7f120342

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    const p1, 0x7f1204a8

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const p1, 0x7f1204a9

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/camera/Camera$11;

    invoke-direct {v9, p0}, Lcom/android/camera/Camera$11;-><init>(Lcom/android/camera/Camera;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 8
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/camera/Camera$12;

    invoke-direct {v13, p0}, Lcom/android/camera/Camera$12;-><init>(Lcom/android/camera/Camera;)V

    move-object v5, p0

    .line 9
    invoke-static/range {v5 .. v13}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mPermissionGuideDialog:Lmiuix/appcompat/app/AlertDialog;

    goto/16 :goto_2

    .line 10
    :cond_1
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    const-string v1, "android.permission.CAMERA"

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "android.permission.RECORD_AUDIO"

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eqz v5, :cond_2

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const p1, 0x7f1204aa

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const p1, 0x7f1204a3

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 15
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const p1, 0x7f1204a6

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_5
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const p1, 0x7f1204ab

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const p1, 0x7f1204a5

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_7
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const p1, 0x7f1204ad

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 23
    :cond_8
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f1204a2

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const p1, 0x7f1204a7

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/camera/Camera$13;

    invoke-direct {v9, p0}, Lcom/android/camera/Camera$13;-><init>(Lcom/android/camera/Camera;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 26
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/camera/Camera$14;

    invoke-direct {v13, p0}, Lcom/android/camera/Camera$14;-><init>(Lcom/android/camera/Camera;)V

    move-object v5, p0

    .line 27
    invoke-static/range {v5 .. v13}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mPermissionGuideDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 28
    :goto_2
    iget-object p1, p0, Lcom/android/camera/Camera;->mPermissionGuideDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return v3

    .line 29
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    const/16 p1, 0x66

    .line 30
    invoke-static {p0, p1}, Lcom/android/camera/permission/PermissionManager;->requestCameraPermissions(Landroid/app/Activity;I)Z

    return v3

    :cond_a
    return v2
.end method

.method private requestCtaDialog()V
    .locals 7

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-nez v0, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o000O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsNewCTAShowing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f120255

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120257

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x7f120256

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f120252

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const v2, 0x7f120258

    .line 7
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const v2, 0x7f120251

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 9
    new-instance v2, Landroid/content/Intent;

    const-string v5, "miui.intent.action.SYSTEM_PERMISSION_DECLARE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v5, 0x7f120253

    .line 10
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "all_purpose"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "mandatory_permission"

    .line 11
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "runtime_perm"

    .line 12
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "runtime_perm_desc"

    .line 13
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.permission-group.LOCATION"

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "optional_perm"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    new-array v0, v4, [Ljava/lang/String;

    const v1, 0x7f120499

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "optional_perm_desc"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v0

    const-string/jumbo v1, "show_locked"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "optional_perm_show"

    .line 17
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.miui.securitycenter"

    .line 18
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xc8

    .line 19
    :try_start_0
    invoke-virtual {p0, v2, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 20
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsNewCTAShowing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCtaDialog fail cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->disableTouchEvent()V

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OooO0oO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OooO0oO;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private resumeCamera(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeCamera: E"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isImageIntent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveSegmentData(Ljava/util/List;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x3aa

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;

    const/4 v11, 0x0

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;->isDisplayFoldOrUnfold()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v11

    .line 8
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->isSwitchingModule()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 9
    iget-object v1, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumeCamera: isSwitchingModule() &&  displayFoldStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->isAlive(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 11
    iget-object v1, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeCamera: module is obsolete"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->unRegisterProtocol()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->registerProtocol()V

    goto/16 :goto_a

    .line 14
    :cond_4
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayFoldState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    invoke-static {v11}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    .line 16
    :cond_5
    iget-object v2, v0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->isJumpBack()Z

    move-result v4

    const/4 v12, 0x1

    if-eqz v4, :cond_7

    .line 18
    iget-object v3, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeCamera: from gallery, mReleaseByModule = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput-boolean v11, v0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    .line 20
    iget-boolean v3, v0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/IModuleState;->isShot2GalleryOrEnableParallel()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 21
    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v1

    invoke-interface {v1, v12}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    .line 22
    iput-boolean v11, v0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    return-void

    :cond_6
    move v6, v11

    move v7, v6

    goto/16 :goto_6

    .line 23
    :cond_7
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v13

    .line 24
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v14

    .line 25
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v15

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->isCameraAliveWhenResume()Z

    move-result v16

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->isActivityNewIntent()Z

    move-result v4

    if-nez v4, :cond_9

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v10, v11

    goto :goto_2

    :cond_9
    :goto_1
    move v10, v12

    .line 28
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v6

    const/4 v7, 0x0

    xor-int/lit8 v8, v16, 0x1

    move-object v3, v1

    move/from16 v9, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZZZZ)Landroidx/core/util/Pair;

    .line 29
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v3

    .line 30
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    .line 31
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v5

    if-eq v15, v4, :cond_a

    move v6, v12

    goto :goto_3

    :cond_a
    move v6, v11

    :goto_3
    if-eq v14, v3, :cond_b

    move v7, v12

    goto :goto_4

    :cond_b
    move v7, v11

    :goto_4
    const-string/jumbo v8, "resumeCamera: lastType="

    if-eqz v14, :cond_e

    .line 32
    iget-object v5, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v5, :cond_c

    invoke-interface {v5}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/IModuleState;->isSelectingCapturedResult()Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v12

    goto :goto_5

    :cond_c
    move v5, v11

    .line 33
    :goto_5
    iget-object v9, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " curType="

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " captureFinish="

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v14, v3, :cond_d

    if-eqz v5, :cond_d

    .line 34
    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->resumeCurrentMode(I)V

    return-void

    :cond_d
    if-eqz v5, :cond_10

    .line 35
    iget-object v3, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    const/4 v4, 0x6

    new-array v5, v11, [I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I[I)V

    goto :goto_6

    .line 36
    :cond_e
    iget-object v3, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " | mReleaseByModule="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_10

    if-ne v13, v5, :cond_10

    if-nez v6, :cond_10

    if-nez v7, :cond_10

    .line 37
    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v1, :cond_f

    .line 38
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ICameraMgr;->notifyAfterFirstFrameArrived()V

    .line 39
    :cond_f
    iget-object v1, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/animation/AnimationComposite;->notifyAfterFirstFrameArrived(I)V

    .line 40
    iput-boolean v11, v0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    return-void

    .line 41
    :cond_10
    :goto_6
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v8, 0x3

    if-nez v3, :cond_12

    if-nez v6, :cond_12

    if-eqz v7, :cond_11

    goto :goto_7

    :cond_11
    move v3, v5

    goto :goto_8

    .line 42
    :cond_12
    :goto_7
    iget-object v3, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v3, :cond_13

    new-array v6, v11, [I

    .line 43
    invoke-virtual {v3, v4, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I[I)V

    :cond_13
    move v3, v8

    :goto_8
    if-eq v3, v8, :cond_14

    if-eqz v2, :cond_14

    move v12, v5

    goto :goto_9

    :cond_14
    if-eq v3, v8, :cond_16

    .line 44
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    const/16 v5, 0xb3

    if-ne v2, v5, :cond_16

    .line 45
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v2

    const-class v5, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v2, v5}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/observeable/VMProcessing;

    .line 46
    invoke-virtual {v2}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result v2

    if-ne v2, v4, :cond_15

    .line 47
    iget-object v1, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeCamera: vv combine, return"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const/4 v12, -0x1

    .line 48
    :cond_16
    :goto_9
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v3}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 51
    :goto_a
    iget-object v1, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeCamera: X"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resumeIfNotRecording()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/MiuiCameraSound;->instance:Lcom/android/camera/MiuiCameraSound;

    if-nez v0, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/MiuiCameraSound;->getInstance(Landroid/content/Context;)Lcom/android/camera/MiuiCameraSound;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->onResume()V

    return-void
.end method

.method private setBrightnessRampRate(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->setBrightnessRampRate(I)V

    return-void
.end method

.method private setScreenEffect(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->setScreenEffect(Z)V

    return-void
.end method

.method private setTranslucentNavigation(Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/display/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 7
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-void
.end method

.method private setupCamera(Lcom/android/camera/module/loader/StartControl;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    .line 2
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setupCamera: skipped since we\'re requesting runtime permission."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setupCamera: skipped since activity is paused!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setupCamera: skipped since some permissions need to be granted"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    return-void

    .line 10
    :cond_2
    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setupCamera: skipped since module has been created"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupCamera: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->setProfilingStartPreview(Z)V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()V

    .line 17
    new-instance v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;

    iget v3, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget v4, p1, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    iget v5, p1, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    iget-boolean v6, p1, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureData:Z

    iget-object v7, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;-><init>(IIIZLcom/android/camera/module/Module;)V

    .line 18
    new-instance v1, Lcom/android/camera/module/loader/FunctionModuleSetup;

    iget v2, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v1, v2}, Lcom/android/camera/module/loader/FunctionModuleSetup;-><init>(I)V

    .line 19
    new-instance v2, Lcom/android/camera/module/loader/FunctionDataSetup;

    iget v3, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v2, v3}, Lcom/android/camera/module/loader/FunctionDataSetup;-><init>(I)V

    .line 20
    new-instance v3, Lcom/android/camera/module/loader/FunctionUISetup;

    iget v4, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {p1}, Lcom/android/camera/module/loader/StartControl;->needNotifyUI()Z

    move-result p1

    invoke-direct {v3, v4, p1}, Lcom/android/camera/module/loader/FunctionUISetup;-><init>(IZ)V

    .line 21
    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 22
    invoke-virtual {p1, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/android/camera/Camera;->mCamera2OpenOnSubscribe:Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 25
    invoke-virtual {v0, v4}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 26
    invoke-virtual {v0, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 27
    iget-object v4, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setupCamera: CameraSetupDisposable: E"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v4, p0, Lcom/android/camera/Camera;->mCameraOpenResult:Lio/reactivex/functions/BiFunction;

    invoke-virtual {p1, v0, v4}, Lio/reactivex/Single;->zipWith(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 31
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v3}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupConsumer:Lio/reactivex/functions/Consumer;

    .line 33
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    .line 34
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setupCamera: X"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private shouldReleaseLater()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->shouldReleaseLater()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showCameraError(I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCameraError(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/camera/aftersales/AftersalesManager;->count(JII)V

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 6
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000OooO()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->takebackMotor()Z

    :cond_0
    return-void
.end method

.method private showDebug()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isShowDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/Camera;->initDebugInfo()V

    .line 3
    new-instance v0, Lcom/android/camera/Camera$LogThread;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$LogThread;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isShowPreviewDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/Camera;->initDebugInfo()V

    :cond_1
    return-void
.end method

.method private showFirstUsePermissionActivity()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "pref_camera_first_use_permission_shown_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    .line 3
    sget-object v2, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "KR"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "miui.intent.action.APP_PERMISSION_USE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1205f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1205f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1205f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1205f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "extra_main_permission_groups"

    .line 11
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v2, "extra_pkgname"

    const-string v3, "com.android.camera"

    .line 12
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KR Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private showHibernationFragment()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$8;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    new-instance v0, Lcom/android/camera/fragment/dialog/HibernationFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/HibernationFragment;-><init>()V

    const/4 v1, 0x2

    const v2, 0x7f1300b8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "Hibernation"

    .line 5
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private triggerWatchDog(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerWatchDog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooooo:Z

    if-eqz v0, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lcom/android/camera/Camera$WatchDogThread;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 7
    iput-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    :cond_2
    :goto_0
    return-void
.end method

.method private unbindServices()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsGalleryServiceBound:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsGalleryServiceBound:Z

    :cond_0
    return-void
.end method

.method private unregisterSDReceiver()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mSDReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateMultiCameraState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->containsResumedCameraInStack()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsMultiCamera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/extra/DataItemLive;->setIsMultiCamera(Z)V

    return-void
.end method

.method private wakeUpAndUnlock()V
    .locals 3

    const-string/jumbo v0, "power"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_0
    if-nez v1, :cond_1

    const v1, 0x1000000a

    const-string v2, "bright"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 17
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IModuleState;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "cameraSingle: EXCEPTION_CAMERA_OPEN_CANCEL"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xe1

    .line 19
    invoke-static {v0, p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public synthetic OooO00o(Lcom/android/camera/module/loader/NullHolder;Lcom/android/camera/module/loader/camera2/Camera2Result;)Lcom/android/camera/module/loader/NullHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    invoke-virtual {p2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->getResult()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraOpenResult apply: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 11
    invoke-interface {v0}, Lcom/android/camera/module/Module;->setDeparted()V

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->getCameraError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->showCameraError(I)V

    :goto_0
    return-object p1
.end method

.method public synthetic OooO00o(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLunchFromAutoTest:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    :cond_2
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentTempStage:I

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->onThermalNotification(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    .line 13
    iget-object p1, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    if-eqz p1, :cond_0

    .line 14
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/CommonRotationLayout;->addExtraView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "LensDirtyDetectDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public synthetic OooO0O0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLensAvailability callback: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setGoogleLensAvailability(Z)V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLensActivity: launch success ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->startRealtimeBlur()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFeatureAutoDownloadUseHintShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/Camera;->showFeatureAutoDownloadDialog()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->requestCameraLaunchPermissions(Z)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstLocationUseHint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x65

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/permission/PermissionManager;->requestCameraPermissions(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFeatureAutoDownloadUseHintShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/Camera;->showFeatureAutoDownloadDialog()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->enableTouchEvent()V

    :cond_3
    :goto_0
    return-void
.end method

.method public changeRequestOrientation()V
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public checkFeatureAutoDownload()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->checkFeatureAutoDownload()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xfa0

    :cond_1
    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->batchInstallFeatures(Landroid/content/Context;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public connectionStatus(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/rcs/RemoteControl;->startStreaming(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "connectionStatus: startStreaming failed"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customCallback:\n\textensionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Payload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->jsonify(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.xiaomi.camera.rcs.onVideoCastStateChanged"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    const/16 v0, 0xa2

    if-ne p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1, p2}, Lcom/android/camera/module/Module;->onVideoCastStateChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ProximitySensorLock;->intercept(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xb3

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->modeChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Key event intercept caz mode change."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    return v1

    .line 6
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public exitAutoHibernationMode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "exitAutoHibernationMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/Module;->exitAutoHibernation()V

    :cond_0
    return-void
.end method

.method public getCapturePosture()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->getCapturePosture()I

    move-result v0

    return v0
.end method

.method public getCurrentBrightness()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v0

    return v0
.end method

.method public getCurrentModuleIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    :goto_0
    return v0
.end method

.method public getImageSaver()Lcom/android/camera/storage/ImageSaver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method public getImplFactory()Lcom/android/camera/module/impl/ImplFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    return-object v0
.end method

.method public getIsSupportOrientation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    return v0
.end method

.method public getSensorStateManager()Lcom/android/camera/SensorStateManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    return-object v0
.end method

.method public handleScreenSlideKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenSlideKeyEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoooO()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x2bd

    if-ne p1, p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraIntentManager;->isFromScreenSlide()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isModeSwitched()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const p1, 0x7f010014

    const p2, 0x7f010015

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isPostProcessing()Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    const/16 v2, 0x2bc

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    move v4, v3

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v5

    const/16 v6, 0xab

    const/16 v7, 0xa6

    if-ne v5, v6, :cond_4

    .line 10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v6

    invoke-virtual {v6}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOOo0()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-eq v5, v7, :cond_5

    const/16 v6, 0xa7

    if-eq v5, v6, :cond_5

    const/16 v6, 0xad

    if-eq v5, v6, :cond_5

    const/16 v6, 0xaf

    if-ne v5, v6, :cond_6

    :cond_5
    const/16 v5, 0xa3

    :cond_6
    if-eq v1, v4, :cond_c

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xac

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v6, 0xa4

    invoke-virtual {v2, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_7

    const/4 v6, 0x4

    .line 13
    invoke-interface {p1, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu(I)V

    :cond_7
    if-eqz v2, :cond_8

    .line 14
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    const/16 v6, 0xb8

    if-ne p1, v6, :cond_8

    .line 15
    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    .line 16
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xb3

    .line 17
    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eqz p1, :cond_9

    .line 18
    invoke-interface {p1, v5}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->resetModeSelectView(I)V

    .line 19
    :cond_9
    invoke-virtual {p2, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 20
    invoke-virtual {p2, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    if-ne v1, v0, :cond_a

    move p1, v0

    goto :goto_1

    :cond_a
    move p1, v3

    :goto_1
    if-ne v4, v0, :cond_b

    move v3, v0

    .line 21
    :cond_b
    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    .line 22
    invoke-static {p1, v3, p2}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchCameraStart(ZZI)V

    .line 23
    invoke-static {v5}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setFromScreenSlide(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x2

    .line 26
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_2

    :cond_c
    if-ne p1, v2, :cond_d

    .line 28
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 29
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IAppStateMgr;->updateScreenSlide(Z)V

    .line 30
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 32
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    .line 33
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateContentDescription()V

    :cond_d
    :goto_2
    return v0
.end method

.method public hideLensDirtyDetectedHint()V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoO()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OooO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OooO;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isCurrentModeSupportWCG()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "isCurrentModeSupportWCG(mStartControl == null)"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, v0, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCurrentModeSupportWCG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getWCGConfig(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isCurrentModuleAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIntentPhotoDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIntentPhotoDone:Z

    return v0
.end method

.method public isModeSwitched()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsModeSwitched:Z

    return v0
.end method

.method public isNewBieAlive(I)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "UltraTeleModeHint"

    goto :goto_0

    :pswitch_1
    const-string p1, "VVHint"

    goto :goto_0

    :pswitch_2
    const-string p1, "MacroModeHint"

    goto :goto_0

    :pswitch_3
    const-string p1, "UltraWideHint"

    goto :goto_0

    :pswitch_4
    const-string p1, "AiSceneHint"

    goto :goto_0

    :pswitch_5
    const-string p1, "RotateHint"

    goto :goto_0

    :pswitch_6
    const-string p1, "PortraitHint"

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenSlideOff()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    return v0
.end method

.method public isSelectingCapturedResult()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isSelectingCapturedResult()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isStable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    .line 2
    invoke-virtual {v1}, Lcom/xiaomi/camera/rcs/RemoteControl;->isStreaming()Z

    move-result v1
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStreaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public notifyOnFirstFrameArrived(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isDeparted()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isSwitchingModule()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xfe

    if-eq v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, LOooO00o/OooO0O0/OooO00o/OooO0oo;

    invoke-direct {v3, p0}, LOooO00o/OooO0O0/OooO00o/OooO0oo;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/animation/AnimationComposite;->notifyAfterFirstFrameArrived(I)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/ICameraMgr;->setFrameAvailable(Z)V

    .line 9
    iget-boolean p1, p0, Lcom/android/camera/Camera;->mNeedReUpdateThermal:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    const/4 v3, 0x6

    .line 10
    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 13
    iput v3, p1, Landroid/os/Message;->what:I

    .line 14
    iget v3, p0, Lcom/android/camera/Camera;->mCurrentTempStage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    :cond_4
    iget-wide v3, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    .line 17
    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    const-wide/16 v3, -0x1

    .line 18
    iput-wide v3, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 20
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OooO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OooO0o;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p1

    const/16 v2, 0xa3

    if-eq p1, v2, :cond_7

    return-void

    .line 22
    :cond_7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0O()Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 23
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 24
    :cond_9
    iget p1, p0, Lcom/android/camera/ActivityBase;->mDisplayRotation:I

    if-eqz p1, :cond_a

    return-void

    .line 25
    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const-string/jumbo v2, "pref_front_camera_first_use_hint_shown_key"

    invoke-virtual {p1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 26
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    const/4 v0, 0x0

    .line 27
    invoke-interface {p1, v2, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->showNewBie(I)Lcom/android/camera/fragment/dialog/BaseDialogFragment;

    :cond_b
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v2, 0xa1

    if-eq p1, v2, :cond_3

    const/16 p3, 0xc8

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsNewCTAShowing:Z

    if-ne p2, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p2, "Track init start"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->TrackInit(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCTADialogAgree()V

    .line 6
    invoke-static {v0}, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->setCanConnectNetwork(Z)V

    .line 7
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->updateCTAPreference(Z)V

    .line 8
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->recordFirstUse(Z)V

    .line 9
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->requestCameraLaunchPermissions(Z)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstLocationUseHint()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    if-nez p1, :cond_6

    const/16 p1, 0x65

    .line 12
    invoke-static {p0, p1}, Lcom/android/camera/permission/PermissionManager;->requestCameraPermissions(Landroid/app/Activity;I)Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_6

    .line 13
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCTADialogDisagree()V

    .line 14
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->updateCTAPreference(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/FileCompat;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    const-string p2, "Camera"

    .line 18
    invoke-virtual {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p3

    if-nez p3, :cond_6

    .line 19
    invoke-virtual {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    goto :goto_0

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onActivityResult documents permission not granted"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {v1}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x904

    if-ne p2, p1, :cond_6

    .line 22
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const-string/jumbo p2, "pref_camera_first_use_permission_shown_key"

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_6
    :goto_0
    return-void
.end method

.method public onAwaken()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAwaken"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$7;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->requestAwaken()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IUserEventMgr;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigThemeRequest(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean p1, p1, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->reInit:Z

    xor-int/lit8 p1, p1, 0x1

    .line 4
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/animation/AnimationComposite;->disposeThemeChanged(ILcom/android/camera/module/loader/StartControl;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->cleanDefaultValues()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate start"

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/Camera;->profileStartUpActions()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraAppImpl;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    const/4 v0, 0x0

    const-string v1, "camera.test.auto"

    .line 4
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsLunchFromAutoTest:Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate: intent-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v2}, Lcom/android/camera/CameraAppImpl;->isApplicationFirstLaunched()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->trackAppLunchTimeStart(Z)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIntentPhotoDone:Z

    .line 10
    invoke-static {v1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    .line 11
    invoke-virtual {v2, p0}, Lcom/android/camera/CameraIntentManager;->setReferer(Landroid/app/Activity;)V

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOoO()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 13
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 14
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-static {v4, v2}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;Z)V

    .line 15
    invoke-static {v0}, Lcom/android/camera/display/Display;->updateOrientation(I)V

    .line 16
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 17
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v4}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v4

    if-nez v4, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An illegal caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v1}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " use VOICE_CONTROL_INTENT!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-super {p0, v5}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 21
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v4}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v1, v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackCallerControl(Landroid/content/Intent;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/display/Display;->initStatusBarHeight(Landroid/content/Context;)V

    .line 24
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {p0}, Lcom/android/camera/display/Display;->checkMultiWindowSupport(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create in MultiWindowMode "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 27
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackMultiWindowCamera()V

    .line 28
    :cond_3
    invoke-static {p0}, Lcom/android/camera/Util;->isSupportWCG(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 29
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setColorMode(ActivityInfo.COLOR_MODE_WIDE_COLOR_GAMUT)"

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setColorMode(I)V

    .line 31
    :cond_4
    invoke-static {p0}, Lcom/android/camera/Util;->updateDeviceConfig(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/android/camera/Camera;->showFirstUsePermissionActivity()V

    .line 33
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->checkPermissionAndCTA(Z)V

    .line 34
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 35
    invoke-static {}, Lcom/android/camera/Util;->isNonUIEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isFromVolumeKey()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 36
    invoke-static {}, Lcom/android/camera/Util;->isNonUI()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "NonUI_volume"

    .line 37
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPocketModeEnter(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Finish from NonUI mode."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 40
    :cond_5
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->supported()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 41
    new-instance p1, Lcom/android/camera/ProximitySensorLock;

    invoke-direct {p1, p0}, Lcom/android/camera/ProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    .line 42
    invoke-virtual {p1}, Lcom/android/camera/ProximitySensorLock;->startWatching()V

    .line 43
    :cond_6
    invoke-static {}, Lcom/android/camera/effect/EffectController;->releaseInstance()V

    const p1, 0x7f0d0189

    .line 44
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0a032d

    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mSurfaceView:Landroid/view/SurfaceView;

    .line 47
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 48
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a01a9

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const p1, 0x7f0a00a5

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CameraRootView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    const p1, 0x7f0a036d

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 52
    new-instance v4, LOooO00o/OooO0O0/OooO00o/OooOO0O;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO00o/OooOO0O;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, v4}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 53
    iget-object p1, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    if-nez p1, :cond_7

    .line 54
    new-instance p1, Lcom/android/camera/CommonRotationLayout;

    invoke-direct {p1, p0}, Lcom/android/camera/CommonRotationLayout;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    .line 55
    :cond_7
    new-instance p1, Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {p1, p0, v4}, Lcom/android/camera/SensorStateManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    .line 56
    new-instance p1, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {p1, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 57
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->initCameraScreenNail()V

    .line 58
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateMultiCameraState()V

    .line 59
    new-instance p1, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;-><init>(Lcom/android/camera/module/loader/SurfaceStateListener;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mCamera2OpenOnSubscribe:Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/Camera;->registerProtocol()V

    .line 61
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setTranslucentNavigation(Z)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/EffectChangedListenerController;->setHoldKey(I)V

    .line 63
    invoke-static {}, Lcom/android/camera/CameraSettings;->supportGoogleLens()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 64
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setGoogleLensAvailability(Z)V

    .line 65
    new-instance p1, Lcom/google/lens/sdk/LensApi;

    invoke-direct {p1, p0}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    .line 66
    new-instance v4, LOooO00o/OooO0O0/OooO00o/OooO0O0;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO00o/OooO0O0;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, v4}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    .line 67
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v4, "Bind Lens service: E"

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    invoke-virtual {p1}, Lcom/google/lens/sdk/LensApi;->onResume()V

    .line 69
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v4, "Bind Lens service: X"

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/Camera;->showDebug()V

    .line 71
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/camera/ThermalDetector;->onCreate(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    .line 73
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o0o()Z

    move-result v4

    .line 74
    invoke-virtual {p1, v4}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Z)V

    .line 75
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->isStreamingRequested(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, -0x1

    const-string v4, "device_id"

    .line 76
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    .line 77
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate: remote device id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-nez p1, :cond_9

    .line 79
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate: bind rcs"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    .line 81
    invoke-static {p0, p0, p0, p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getRemoteControl(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;)Lcom/xiaomi/camera/rcs/RemoteControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    .line 82
    :cond_9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez v2, :cond_a

    move v0, v3

    :cond_a
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    .line 83
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSupportOrientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {p0}, Lcom/android/camera/Coverage;->initCoverageService(Landroid/content/Context;)V

    .line 85
    new-instance p1, Lcom/android/camera/Camera$ScreenSlideObserver;

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, p0}, Lcom/android/camera/Camera$ScreenSlideObserver;-><init>(Landroid/os/Handler;Lcom/android/camera/Camera;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mScreenSlideStatusObserver:Lcom/android/camera/Camera$ScreenSlideObserver;

    .line 86
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera;->ACTION_CREATE_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 87
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateMultiCameraState()V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa3

    const/16 v2, 0xb9

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0OO()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xd2

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xb3

    if-ne v0, v2, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOooO()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xd1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xd5

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_4

    const/16 v1, 0xbd

    if-ne v0, v1, :cond_5

    .line 7
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    :cond_5
    :goto_0
    const/16 v1, 0xb7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveSegmentData(Ljava/util/List;)V

    .line 9
    :cond_6
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->removeInstance(Landroid/content/Context;)V

    .line 10
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/Camera;->unRegisterProtocol()V

    .line 12
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->onDestroy()V

    .line 13
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostDestroy()V

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->onDestroy()V

    .line 17
    :cond_8
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->onDestroy(Lcom/android/camera/ActivityBase;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/EffectChangedListenerController;->removeEffectChangedListenerMap(I)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/camera/Camera$LogThread;->setRunFlag(Z)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->destroy()V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->destroy()V

    .line 25
    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    .line 26
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_c

    .line 27
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->onDestroy()V

    .line 28
    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    .line 29
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->dismissSystemChoiceDialog()V

    .line 31
    :cond_d
    invoke-static {}, Lcom/android/camera/CameraIntentManager;->removeAllInstance()V

    .line 32
    invoke-static {}, Lcom/android/camera/CameraSettings;->supportGoogleLens()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    iget-object v0, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    if-nez v0, :cond_e

    .line 34
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onDestroy: mLensApi is null!"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 35
    :cond_e
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "Unbind Lens service: E"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    invoke-virtual {v0}, Lcom/google/lens/sdk/LensApi;->onPause()V

    .line 37
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "Unbind Lens service: X"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_f
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-eqz v0, :cond_10

    .line 39
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onDestroy: release glrender thread"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->quit()V

    .line 41
    iput-object v2, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    .line 42
    :cond_10
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-eqz v0, :cond_11

    .line 43
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onDestroy: release rcs"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    iget-object v3, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/rcs/RemoteControl;->stopStreaming(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 46
    iget-object v3, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDestroy: stopStreaming failed"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    :goto_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/RemoteControl;->release()V

    .line 48
    iput-object v2, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    .line 49
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    .line 50
    :cond_11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMResource;

    .line 51
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMResource;->onDestroy()V

    .line 52
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMFeature;

    .line 53
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 55
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->removeAllRequestListener()V

    .line 56
    :cond_12
    invoke-static {}, Lcom/android/camera/module/video/MediaRecorderCreator;->getInstance()Lcom/android/camera/module/video/MediaRecorderCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video/MediaRecorderCreator;->release()V

    .line 57
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHibernate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHibernate"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->showHibernationFragment()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->requestHibernate()V

    .line 6
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, Lcom/android/camera/Camera$HibernateRunnable;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-direct {v1, v2}, Lcom/android/camera/Camera$HibernateRunnable;-><init>(Lcom/android/camera/module/Module;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    if-eqz v3, :cond_0

    .line 2
    invoke-super/range {p0 .. p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKeyDown: keycode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x1b

    const/16 v6, 0x42

    const/16 v7, 0x19

    const/16 v8, 0x18

    const/16 v9, 0x57

    const/16 v10, 0x58

    const/4 v11, 0x1

    if-nez v3, :cond_4

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v10, :cond_1

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_4

    .line 5
    :cond_1
    iget-wide v12, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    iget-wide v5, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    cmp-long v5, v12, v5

    if-gez v5, :cond_2

    .line 6
    iput v1, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 7
    iput-wide v14, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    return v11

    .line 8
    :cond_2
    iget-object v5, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v5}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getVolumeCameraFunction(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    iget-wide v12, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    cmp-long v6, v12, v14

    if-eqz v6, :cond_3

    invoke-direct {v0, v2}, Lcom/android/camera/Camera;->isFromOneShotKeyPressed(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f1207c8

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 10
    iget-object v2, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyDown: isFromOneShotKeyPressed and return! keyCode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput v1, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 12
    iput-wide v14, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    return v11

    .line 13
    :cond_3
    iput v4, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_5

    iget v5, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne v1, v5, :cond_5

    .line 16
    iput v4, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    :cond_5
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x2bd

    const/16 v6, 0x2bc

    if-ne v1, v6, :cond_6

    .line 17
    iput-boolean v4, v0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    goto :goto_1

    :cond_6
    if-ne v1, v5, :cond_7

    .line 18
    iput-boolean v11, v0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    .line 19
    :cond_7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v12}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/camera/module/common/ICameraMgr;->isFrameAvailable()Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_4

    .line 20
    :cond_8
    sget-boolean v3, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO0O:Z

    if-eqz v3, :cond_a

    if-eq v1, v8, :cond_9

    if-eq v1, v7, :cond_9

    if-eq v1, v9, :cond_9

    if-eq v1, v10, :cond_9

    goto :goto_2

    .line 21
    :cond_9
    invoke-super/range {p0 .. p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 22
    :cond_a
    :goto_2
    iget-object v3, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/camera/module/common/IUserEventMgr;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 23
    invoke-super/range {p0 .. p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    move v11, v4

    :cond_c
    :goto_3
    return v11

    :cond_d
    :goto_4
    if-eq v1, v8, :cond_f

    if-eq v1, v7, :cond_f

    const/16 v3, 0x1b

    if-eq v1, v3, :cond_f

    const/16 v3, 0x42

    if-eq v1, v3, :cond_f

    const/16 v3, 0x50

    if-eq v1, v3, :cond_f

    if-eq v1, v9, :cond_f

    if-eq v1, v10, :cond_f

    if-eq v1, v6, :cond_e

    if-eq v1, v5, :cond_e

    .line 24
    invoke-super/range {p0 .. p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 25
    :cond_e
    invoke-virtual/range {p0 .. p2}, Lcom/android/camera/Camera;->handleScreenSlideKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_f
    return v11
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onKeyUp: keyCode KeyEvent.KEYCODE_BACK is not isTracking or isCanceled"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_2
    iget v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 8
    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onKeyUp: key is lastIgnore key   keyCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 9
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    .line 10
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyUp: mLastKeyUpEventTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-nez v0, :cond_4

    .line 12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 13
    :cond_4
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO0O:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x18

    if-eq p1, v0, :cond_5

    const/16 v0, 0x19

    if-eq p1, v0, :cond_5

    const/16 v0, 0x57

    if-eq p1, v0, :cond_5

    const/16 v0, 0x58

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 15
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/common/IUserEventMgr;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method public onLifeAlive()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v3, v3, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v3, v3, Lcom/android/camera/module/loader/StartControl;->mViewConfigType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget-boolean v3, v3, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget-boolean v3, v3, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    .line 4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v3, v3, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string/jumbo v3, "onLifeAlive module 0x%x, need anim %d, need blur %b need reconfig %b reset type %d"

    .line 5
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLifeAlive: isFromKeyguard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasBeenSetupOnFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mHasFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/display/Display;->isNormalMuiltDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasFocus:Z

    if-eqz v0, :cond_3

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLifeAlive: setupCamera: focused"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLifeAlive: setupCamera: !keyguard"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onLifeDestroy(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLifeDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLifeStart(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLifeStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLifeStop(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLifeStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onModeSelected(Lcom/android/camera/module/loader/StartControl;)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsModeSwitched:Z

    .line 5
    invoke-static {p0}, Lcom/android/camera/Util;->isScreenSlideOff(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    .line 6
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget v6, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x3

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const-string/jumbo v6, "onModeSelected from 0x%x to 0x%x, ScreenSlideOff = %b, facing = %d"

    .line 9
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_1

    .line 10
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->modeIdToName(I)Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 11
    invoke-static {v4}, Lcom/android/camera/statistic/CameraStatUtils;->modeIdToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    iget v1, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    .line 15
    invoke-static {v0, v1, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchModeStart(IIZ)V

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-eqz v1, :cond_2

    .line 17
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18
    invoke-static {v1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setPreviousCapturingMode(Landroid/os/Bundle;I)V

    .line 19
    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setCurrentCapturingMode(Landroid/os/Bundle;I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    const-string v4, "com.xiaomi.camera.rcs.setCapturingMode"

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/camera/rcs/RemoteControl;->customRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->getErrorCode(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "send payload failed with error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "send payload failed"

    invoke-static {v1, v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    .line 26
    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    .line 27
    iget-boolean v0, p1, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "needReConfigureCamera = false"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0, v1, p1, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/CompositeDisposable;

    return-void

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/animation/AnimationComposite;->setClickEnable(Z)V

    :cond_4
    const-wide/16 v4, -0x1

    .line 32
    iput-wide v4, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    .line 33
    iget-boolean v0, p1, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    if-eqz v0, :cond_5

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    .line 35
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    .line 36
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraPermissions()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 37
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 38
    iput-boolean v3, p1, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 40
    :cond_7
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->setCurrentModule(Lcom/android/camera/module/Module;)V

    .line 41
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v5, :cond_8

    .line 42
    invoke-interface {v5}, Lcom/android/camera/module/Module;->setDeparted()V

    .line 43
    invoke-interface {v5}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setLastMode(I)Lcom/android/camera/module/loader/StartControl;

    .line 44
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->createNewModule(Lcom/android/camera/module/loader/StartControl;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onModeSelected: module instantiated: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    iget v4, p1, Lcom/android/camera/module/loader/StartControl;->mTransMode:I

    const/16 v6, 0xfd

    if-ne v4, v6, :cond_9

    move v4, v2

    goto :goto_2

    :cond_9
    move v4, v3

    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->setDummySystemEnable(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-nez v0, :cond_a

    .line 48
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onModeSelected: without prefix"

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->init(Landroidx/fragment/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 51
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00oO()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 52
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v0, :cond_f

    .line 53
    iget-object v1, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->registerAnimationResource(Lcom/android/camera/animation/AnimationComposite;I)V

    goto/16 :goto_3

    .line 54
    :cond_a
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onModeSelected: with prefix"

    invoke-static {v0, v4}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v11

    .line 56
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->allowOpenWhenPaused(Lcom/android/camera/module/loader/StartControl;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    new-instance v0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v7

    const/4 v8, 0x0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v10

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/CameraScreenNail;Landroid/content/Intent;IZZ)V

    .line 61
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 62
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 63
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    .line 64
    :cond_b
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    if-eqz v0, :cond_e

    .line 65
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    iget v4, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v0, v4}, Lcom/android/camera/CommonRotationLayout;->getForceFixedRotation(I)I

    move-result v0

    .line 66
    iget-object v4, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    if-eqz v4, :cond_c

    .line 67
    iget v5, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {v4, v5}, Lcom/android/camera/CommonRotationLayout;->updateForceFixedGravity(I)V

    .line 68
    :cond_c
    iget-object v4, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    iget v5, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget v6, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/camera/CommonRotationLayout;->provideOrientationChanged(ZII)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 69
    iput v2, p1, Lcom/android/camera/module/loader/StartControl;->mViewConfigType:I

    .line 70
    :cond_d
    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CommonRotationLayout;->getForceFixedRotation(I)I

    move-result v2

    if-eq v2, v0, :cond_e

    .line 71
    invoke-static {v2}, Lcom/android/camera/display/Display;->updateOrientation(I)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    .line 73
    invoke-static {}, Lcom/android/camera/display/Display;->getScreenOrientation()I

    move-result v4

    .line 74
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/animation/AnimationComposite;->disposeRotation(IZI)V

    .line 75
    :cond_e
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "CameraPendingSetupDisposable: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 77
    :cond_f
    :goto_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCupCameraPositionHintOn()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 78
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDualVideoModuleWithFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 79
    :cond_10
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    const v1, 0x7f0a01a6

    const/16 v2, 0xff6

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->lazyLoadFragment(II)V

    .line 80
    :cond_11
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/StartControl;->getFeatureFragmentAlias()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->batchFragmentRequest(Ljava/util/List;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMultiWindowModeChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", configuration = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0}, Lcom/android/camera/display/Display;->checkMultiWindowSupport(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNewIntent start, intent-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isFromVolumeKey()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/Camera;->wakeUpAndUnlock()V

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityNewIntent:Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->destroy()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIntentPhotoDone:Z

    .line 9
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/camera/CameraIntentManager;->setReferer(Landroid/app/Activity;)V

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onNewIntent end"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->onActivityPaused(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->unRegisterAccessibiltyStateChange()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause start mwm"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause end mwm"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->pauseActivity(Z)V

    :goto_0
    return-void
.end method

.method public onPrelaunchGallery(Lcom/android/camera/Thumbnail;)V
    .locals 5

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOoO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Large thumbnail sharing not supported"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mGalleryMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Large thumbnail sharing not ready"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/ShareableMemoryFileBitmap;->getInstance()Lcom/android/camera/ShareableMemoryFileBitmap;

    move-result-object v0

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ShareableMemoryFileBitmap;->set(Landroid/net/Uri;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 9
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 10
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E: Send shareable bitmap@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/Camera;->mGalleryMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 12
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "uri"

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bitmap"

    .line 14
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "size"

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "width"

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "height"

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 19
    iget-object v2, p0, Lcom/android/camera/Camera;->mGalleryMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 20
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X: Send shareable bitmap@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/Camera;->mGalleryMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GalleryBackgroundService width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    .line 22
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 23
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_3

    .line 24
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception p1

    .line 25
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string v0, "has camera permissions, retry init Camera2DataContainer"

    const-string v1, "camera"

    const/16 v2, 0x65

    const/16 v3, 0x66

    if-ne p1, v3, :cond_7

    .line 2
    array-length v3, p2

    if-eqz v3, :cond_6

    array-length v3, p3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4
    invoke-static {p2}, Lcom/android/camera/permission/PermissionManager;->isCameraPermissions([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CameraManager;

    .line 7
    invoke-virtual {p1, p3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->init(Landroid/hardware/camera2/CameraManager;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->prefixCamera2Setup()V

    .line 10
    invoke-static {p2}, Lcom/android/camera/permission/PermissionManager;->isCameraPermissions([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    .line 13
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstLocationUseHint()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    invoke-static {p0, v2}, Lcom/android/camera/permission/PermissionManager;->requestCameraPermissions(Landroid/app/Activity;I)Z

    :cond_3
    return-void

    .line 15
    :cond_4
    invoke-static {p0, p1}, Lcom/android/camera/permission/PermissionManager;->shouldShowRequestPermissionRationale(Landroid/app/Activity;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRequestPermissionsResult: permission is denied, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->requestCameraLaunchPermissions(Z)Z

    goto/16 :goto_5

    :cond_6
    :goto_1
    return-void

    :cond_7
    const/16 v3, 0x64

    const-string v4, "ignore this onRequestPermissionsResult callback"

    const/4 v5, 0x0

    if-ne p1, v3, :cond_d

    .line 21
    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRequestPermissionsResult: no permission finish, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 26
    :cond_8
    array-length p1, p2

    if-nez p1, :cond_9

    array-length p1, p3

    if-nez p1, :cond_9

    .line 27
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 28
    :cond_9
    :goto_2
    array-length p1, p2

    if-ge v5, p1, :cond_b

    .line 29
    aget-object p1, p2, v5

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 30
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    .line 31
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 32
    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->init(Landroid/hardware/camera2/CameraManager;)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 34
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onRequestPermissionsResult: prefixCamera2Setup"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0}, Lcom/android/camera/Camera;->prefixCamera2Setup()V

    .line 36
    invoke-static {p2}, Lcom/android/camera/permission/PermissionManager;->isCameraPermissions([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 37
    iget-object p1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_4

    .line 38
    :cond_c
    iget-object p1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    .line 39
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/android/camera/Camera;->parseLocationPermission([Ljava/lang/String;[I)V

    goto :goto_5

    :cond_d
    if-ne p1, v2, :cond_f

    .line 40
    array-length p1, p2

    if-nez p1, :cond_e

    array-length p1, p3

    if-nez p1, :cond_e

    .line 41
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_e
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->recordLocationFirstUse(Z)V

    .line 43
    invoke-direct {p0, p2, p3}, Lcom/android/camera/Camera;->parseLocationPermission([Ljava/lang/String;[I)V

    :cond_f
    :goto_5
    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRestart start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/Camera;->profileStartUpActions()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->trackAppLunchTimeStart(Z)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    .line 6
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->ACTION_CREATE_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 7
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRestart end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->ACTION_RESUME_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->onActivityResumed(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->checkPermissionAndCTA(Z)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->resumeActivity(Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3aa

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;->setDisplayFoldOrUnfold(Z)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->ACTION_RESUME_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 9
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onSaveInstanceState"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityStarted:Z

    .line 3
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStart()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->onStart()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->isVideoCastIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart: remote camera id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/Camera;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/android/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.camera.videocast.action.DISMISS_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/Camera;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->pauseActivity(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStop start"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/Camera;->removeNewBie()V

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mActivityStopped:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityStarted:Z

    .line 8
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    .line 11
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->onStop()V

    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    if-nez v0, :cond_2

    .line 14
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/Camera;->releaseAll(ZZ)V

    .line 16
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->unbindServices()V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoSettings()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    invoke-static {}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->clearInitASDScenes()V

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 21
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->resetMagneticInfo()V

    .line 22
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v0, :cond_5

    .line 23
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->cancel()V

    .line 24
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->isVideoCastIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStop: isVideoCast = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    iget v2, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    const-string v3, "device_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_7

    .line 28
    iget-object v0, p0, Lcom/android/camera/Camera;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/camera/Camera;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    :cond_6
    invoke-static {p0, v1}, Lcom/xiaomi/camera/videocast/VideoCastService;->disconnect(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStreaming()Z

    move-result v0

    .line 35
    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStop: isStreaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v2, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    .line 37
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/rcs/RemoteControl;->stopStreaming(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStop: stopStreaming failed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_0
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    .line 40
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateMultiCameraState()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->setStreamSize(II)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->draw(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;I)V

    return-void
.end method

.method public onThermalNotification(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onThermalNotification config is null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mNeedReUpdateThermal:Z

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onThermalNotification(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mNeedReUpdateThermal:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onThermalNotification error"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a032d

    if-ne p1, v0, :cond_5

    .line 3
    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->isInDisplayRect(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 5
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->setScaleDetectorEnable(Z)V

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mCatchUnTapableEvent:Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->setScaleDetectorEnable(Z)V

    .line 9
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mCatchUnTapableEvent:Z

    .line 10
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/Camera;->mCatchUnTapableEvent:Z

    if-eqz p1, :cond_4

    .line 11
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTouchEvent: getPointerCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " | mCatchUnTapableEvent "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/Camera;->mCatchUnTapableEvent:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-boolean p1, p0, Lcom/android/camera/Camera;->mCatchUnTapableEvent:Z

    return p1

    :cond_5
    return v1
.end method

.method public onTrimMemory(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, Lcom/android/camera/MemoryHelper;->setTrimLevel(I)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IUserEventMgr;->onUserInteraction()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowFocusChanged: hasFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFromKeyguard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mHasBeenSetupOnFocusChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mHasFocus:Z

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->isNormalMuiltDisplayType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWindowFocusChanged: setupCamera: keyguard"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    .line 10
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-nez v0, :cond_2

    return-void

    .line 15
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/IAppStateMgr;->onWindowFocusChanged(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/camera/CameraBrightness;->onWindowFocusChanged(Z)V

    :cond_3
    if-eqz p1, :cond_4

    .line 19
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/IAppStateMgr;->checkActivityOrientation()V

    :cond_4
    return-void
.end method

.method public pauseActivity(Z)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onPause start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz p1, :cond_0

    const/16 v0, 0x7ff

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityNewIntent:Z

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mScreenSlideStatusObserver:Lcom/android/camera/Camera$ScreenSlideObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 8
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onPause()V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideHibernationFragment()V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a8

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->dismissAutoHibernation()V

    :cond_1
    const/4 v1, -0x1

    .line 12
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    .line 13
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    .line 14
    iget-object v2, p0, Lcom/android/camera/Camera;->mLplDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 16
    iput-object v3, p0, Lcom/android/camera/Camera;->mLplDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 17
    :cond_2
    iget-object v2, p0, Lcom/android/camera/Camera;->mFeatureAutoDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 19
    iput-object v3, p0, Lcom/android/camera/Camera;->mFeatureAutoDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 20
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera;->mPermissionGuideDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 22
    iput-object v3, p0, Lcom/android/camera/Camera;->mPermissionGuideDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 23
    :cond_4
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mRequestDismissKeyguarding:Z

    .line 24
    sget-object v2, Lcom/android/camera/Camera;->DIALOG_FRAGMENT_TAGS:Ljava/util/List;

    new-instance v4, LOooO00o/OooO0O0/OooO00o/OooO0OO;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO00o/OooO0OO;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {v2, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSetupWizard()Ljava/util/Optional;

    move-result-object v2

    sget-object v4, LOooO00o/OooO0O0/OooO00o/Oooo00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo00o;

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 27
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v2, :cond_5

    .line 28
    iget-object v2, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 30
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/Camera;->unregisterSDReceiver()V

    .line 31
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/ThemeModeManager;->setThemeChangeListener(Lcom/android/camera/customization/ThemeModeManager$ThemeModeInterface;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 33
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 34
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isShowBottomIntentDone()Z

    move-result v4

    if-nez v4, :cond_9

    .line 37
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o0o0()Z

    move-result v4

    if-nez v4, :cond_7

    .line 38
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget v4, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v4, p1, :cond_8

    .line 39
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->doPreviewGaussianForever()V

    goto :goto_0

    .line 40
    :cond_8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0o0O()Z

    move-result v4

    if-nez v4, :cond_9

    .line 41
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v4

    const/16 v5, 0xfe

    if-eq v4, v5, :cond_9

    .line 42
    iget-object v4, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPause: readLastFrameGaussian..."

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->readLastFrameGaussian()V

    .line 44
    :cond_9
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mGLCoverDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_a

    .line 45
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 46
    :cond_a
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mErrorDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v2, :cond_b

    .line 47
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 48
    :cond_b
    invoke-static {}, Lcom/android/camera/Util;->dismissSystemChoiceDialog()V

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/Camera;->pauseIfNotRecording()V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    if-eqz v2, :cond_c

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    .line 52
    iget-object v4, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPause: clearFlag --> FLAG_TURN_SCREEN_ON and isChangingConfigurations is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mJumpFlag is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x200000

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 54
    iget v4, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v4, :cond_c

    if-nez v2, :cond_c

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStreaming()Z

    move-result v2

    .line 56
    iget-object v4, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPause: isStreaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_c

    .line 57
    invoke-direct {p0}, Lcom/android/camera/Camera;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_c

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    :cond_c
    iget v2, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v2, :cond_e

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 60
    :cond_d
    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    .line 61
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v2, v3, p1, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    goto :goto_1

    .line 62
    :cond_e
    iget v2, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v2, p1, :cond_f

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->clearNotification()V

    .line 64
    :cond_f
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->cancelHint()V

    .line 67
    :cond_10
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    if-eqz v2, :cond_11

    .line 68
    invoke-virtual {v2}, Lcom/android/camera/ui/CameraRootView;->enableTouchEvent()V

    .line 69
    :cond_11
    iget-object v2, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v2, :cond_12

    .line 70
    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->onHostPause()V

    :cond_12
    const-string v2, "CameraActivity"

    .line 71
    invoke-static {v2}, Lcom/android/camera/statistic/MistatsWrapper;->recordPageEnd(Ljava/lang/String;)V

    .line 72
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    .line 73
    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 74
    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "release by module"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    .line 76
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    .line 77
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/IUserEventMgr;->onActionStop()V

    .line 78
    :cond_13
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    .line 79
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 80
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onThermalNotification finish activity now"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 82
    :cond_14
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThermalDetector;->unregisterReceiver()V

    .line 83
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mNeedReUpdateThermal:Z

    .line 84
    iput v1, p0, Lcom/android/camera/Camera;->mCurrentTempStage:I

    .line 85
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->triggerWatchDog(Z)V

    .line 86
    invoke-direct {p0}, Lcom/android/camera/Camera;->boostParallelServiceAdj()V

    .line 87
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onPause end"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pauseIfNotRecording()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->onPause()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPreviewThumbnail:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 8
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPreviewThumbnail:Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->saveThumbnailToFile()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->cancelTask()V

    :cond_3
    :goto_0
    return-void
.end method

.method public recoverFromCameraError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recoverFromCameraError: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->recoverFromCameraError()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recoverFromCameraError: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerProtocol()V
    .locals 14

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->forceDestroy()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->create(I)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/EffectChangedListenerController;->setHoldKey(I)V

    .line 4
    new-instance v0, Lcom/android/camera/module/impl/ImplFactory;

    invoke-direct {v0}, Lcom/android/camera/module/impl/ImplFactory;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 5
    fill-array-data v2, :array_0

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0oOo0O0()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    new-array v4, v3, [I

    const/16 v5, 0xef

    aput v5, v4, v2

    invoke-virtual {v0, p0, v4}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    .line 8
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    new-array v4, v3, [I

    const/16 v5, 0xff

    aput v5, v4, v2

    invoke-virtual {v0, p0, v4}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    .line 10
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00oO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    new-array v4, v3, [I

    const/16 v5, 0x3b1

    aput v5, v4, v2

    invoke-virtual {v0, p0, v4}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    .line 12
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoooO()Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    invoke-virtual {v0, p0, v5}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    .line 14
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    .line 16
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayFoldState()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v2

    .line 19
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0x3aa

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;

    if-eqz v5, :cond_5

    .line 20
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;->isDisplayFoldOrUnfold()Z

    move-result v5

    xor-int/2addr v3, v5

    :cond_5
    move v13, v3

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v13}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZZZZ)Landroidx/core/util/Pair;

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v4

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void

    :array_0
    .array-data 4
        0xab
        0x3a1
        0x3a5
    .end array-data

    :array_1
    .array-data 4
        0x3aa
        0x3b2
    .end array-data
.end method

.method public releaseAll(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityStopped()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/camera/Camera;->releaseAll(ZIZZ)V

    return-void
.end method

.method public removeNewBie()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNewBie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->drawBlackFrame(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public requestChangeTheme(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestChangeWCGConfig()V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->isSupportWCG(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestChangeWCGConfig(mStartControl == null)"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget v0, v0, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getWCGConfig(I)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v1, v1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->getWCGConfig(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 6
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestChangeWCGConfig: preConfig("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), curConfig("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestChangeWCGConfig(Landroid/view/SurfaceHolder;)V

    :cond_2
    return-void
.end method

.method public restoreWindowBrightness()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v0

    if-lez v0, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 4
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, -0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    return-void
.end method

.method public resumeActivity(Z)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    iput p1, p0, Lcom/android/camera/ActivityBase;->mLastJumpFlag:I

    .line 2
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onResume start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0}, Lcom/android/camera/display/Display;->checkMultiWindowSupport(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resume in MultiWindowMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->showBlurCover()V

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->isNotchScreenHidden()Z

    move-result p1

    invoke-static {p0}, Lcom/android/camera/display/Display;->isNotchScreenHidden(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->isFullScreenNavBarHidden()Z

    move-result p1

    invoke-static {p0}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 9
    invoke-static {p0}, Lcom/android/camera/display/Display;->isDisplaySizeChange(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    :cond_1
    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;Z)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/display/Display;->initStatusBarHeight(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/android/camera/display/Display;->isContentViewExtendToTopEdges()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 15
    :cond_2
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/AutoLockManager;->onResume()V

    .line 16
    iget-object p1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/android/camera/ProximitySensorLock;->onResume()V

    .line 18
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/camera/Util;->SCREEN_SLIDE_STATUS_SETTING_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/Camera;->mScreenSlideStatusObserver:Lcom/android/camera/Camera$ScreenSlideObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p1, "CameraActivity"

    .line 19
    invoke-static {p1}, Lcom/android/camera/statistic/MistatsWrapper;->recordPageStart(Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 21
    iget-boolean p1, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/camera/ActivityBase;->mActivityStopped:Z

    if-nez p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    move p1, v2

    .line 22
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    .line 23
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mActivityStopped:Z

    .line 24
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFirstOrientationArrived:Z

    .line 25
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 26
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 27
    iput v2, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 28
    invoke-static {p0}, Lcom/android/camera/Util;->clearSeamlessRotation(Landroid/app/Activity;)V

    .line 29
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->checkGalleryLock()V

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag()V

    .line 32
    invoke-direct {p0}, Lcom/android/camera/Camera;->resumeIfNotRecording()V

    .line 33
    invoke-static {p0}, Lcom/android/camera/Util;->isScreenSlideOff(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    .line 34
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/FileCompat;->hasStoragePermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v1

    if-nez v1, :cond_5

    .line 37
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "start request documents permission"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object p1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/FileCompat;->getStorageAccessForLOLLIPOP(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void

    .line 39
    :cond_5
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "documents permission not granted, getKeyguardFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {v2}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    .line 41
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 43
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerReceiver()V

    .line 44
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerSDReceiver()V

    .line 45
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/customization/ThemeModeManager;->setThemeChangeListener(Lcom/android/camera/customization/ThemeModeManager$ThemeModeInterface;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->resumeCamera(Z)V

    .line 47
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsModeSwitched:Z

    .line 48
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/Camera;->mThermalNotificationListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

    invoke-virtual {p1, v1}, Lcom/android/camera/ThermalDetector;->registerReceiver(Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;)V

    .line 49
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    .line 50
    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move p1, v2

    goto :goto_3

    :cond_9
    :goto_2
    move p1, v0

    .line 51
    :goto_3
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-nez v1, :cond_a

    .line 52
    new-instance v1, Lcom/android/camera/storage/ImageSaver;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;Landroid/os/Handler;Z)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 53
    :cond_a
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v1, p1}, Lcom/android/camera/storage/ImageSaver;->onHostResume(Z)V

    .line 54
    invoke-direct {p0}, Lcom/android/camera/Camera;->bindServices()V

    .line 55
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->triggerWatchDog(Z)V

    .line 56
    invoke-static {p0}, Lcom/android/camera/Util;->updateAccessibility(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    if-nez p1, :cond_b

    .line 58
    new-instance p1, Lcom/android/camera/tts/TTSHelper;

    invoke-direct {p1, p0}, Lcom/android/camera/tts/TTSHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    .line 59
    :cond_b
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 60
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooo0OO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0OO;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCastIntent(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mLockStreamOrientation:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->isStreamingRequested(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 64
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume: remote camera id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-nez p1, :cond_d

    .line 66
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onResume: bind rcs"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    .line 68
    invoke-static {p0, p0, p0, p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getRemoteControl(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;)Lcom/xiaomi/camera/rcs/RemoteControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    .line 69
    :cond_d
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume: start rcs: already connected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean p1, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    if-eqz p1, :cond_e

    .line 71
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/rcs/RemoteControl;->startStreaming(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 73
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume: startStreaming failed"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_e
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/external/NotifyExternalManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/external/NotifyExternalManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/external/NotifyExternalManager;->notifyCameraResume()V

    .line 75
    iget-object p1, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz p1, :cond_f

    .line 76
    invoke-virtual {p1}, Lcom/android/camera/SensorStateManager;->register()V

    .line 77
    :cond_f
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/customization/ThemeModeManager;->setThemeMode(I)V

    .line 78
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onResume end"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resumeCurrentMode(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    .line 4
    new-instance v0, Lcom/android/camera/module/loader/FunctionResumeModule;

    invoke-direct {v0, p1}, Lcom/android/camera/module/loader/FunctionResumeModule;-><init>(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 6
    invoke-static {p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 7
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OooOO0o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OooOO0o;-><init>(Lcom/android/camera/Camera;)V

    .line 8
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/android/camera/Camera;->mCamera2OpenOnSubscribe:Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 10
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 11
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resumeCurrentMode: CameraSetupDisposable: E"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraOpenResult:Lio/reactivex/functions/BiFunction;

    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->zipWith(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 15
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupConsumer:Lio/reactivex/functions/Consumer;

    .line 16
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setBlockingLifeCycles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setIntnetPhotoDone(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIntentPhotoDone:Z

    return-void
.end method

.method public setVideoStreamEffect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->setFilterId(I)V

    :cond_0
    return-void
.end method

.method public setWindowBrightness(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    .line 4
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showDialogFragment(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_5

    .line 1
    sget-object v0, Lcom/android/camera/Camera;->DIALOG_FRAGMENT_TAGS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    sget-object v0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f1300b8

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 5
    new-instance p1, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;-><init>()V

    .line 6
    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 11
    :cond_3
    sget-object v0, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    new-instance p1, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;-><init>()V

    .line 13
    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;->TAG:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 18
    :cond_4
    sget-object v0, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    new-instance p1, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;-><init>()V

    .line 20
    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;->TAG:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    :goto_0
    return-void
.end method

.method public showFeatureAutoDownloadDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFeatureAutoDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/android/camera/RotateDialogController;->showFeatureAutomaticDialog(Landroid/content/Context;Landroid/os/Handler;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mFeatureAutoDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public showGuide()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->showGuide(I)V

    return-void
.end method

.method public showGuide(I)V
    .locals 5

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isCtsCall()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showGuide = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  isCtsCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_a

    .line 5
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 7
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OooOO0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OooOO0;-><init>(Lcom/android/camera/Camera;)V

    const/4 v2, 0x0

    const/16 v3, 0xab

    const/4 v4, 0x1

    if-eq p1, v3, :cond_5

    const/16 v3, 0xb6

    if-eq p1, v3, :cond_2

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const-string v0, "aiwatermark_first_use"

    invoke-virtual {p1, v0, v4}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result p1

    if-nez p1, :cond_8

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 11
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f12013a

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoO00()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->isNewBieAlive(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "pref_camera_first_id_card_mode_use_hint_shown_key"

    .line 15
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->showNewBie(I)Lcom/android/camera/fragment/dialog/BaseDialogFragment;

    move-result-object v2

    goto :goto_0

    .line 17
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedBeautyLens()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->isNewBieAlive(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const-string/jumbo p1, "pref_camera_first_beauty_lens_use_hint_shown_key"

    .line 19
    invoke-virtual {v0, p1, v4}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->showNewBie(I)Lcom/android/camera/fragment/dialog/BaseDialogFragment;

    move-result-object v2

    :cond_8
    :goto_0
    if-eqz v2, :cond_9

    .line 21
    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->setDismissCallback(Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;)V

    goto :goto_1

    .line 22
    :cond_9
    invoke-interface {v1}, Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;->onDismiss()V

    :cond_a
    :goto_1
    return-void
.end method

.method public showLensDirtyDetectedHint()V
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "LensDirtyDetectDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/android/camera/fragment/dialog/LensDirtyDetectDialogFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/LensDirtyDetectDialogFragment;-><init>()V

    const/4 v2, 0x2

    const v3, 0x7f1300c5

    .line 5
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
    return-void
.end method

.method public showLplSelectDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mLplDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0Oo0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/android/camera/RotateDialogController;->showLongPressDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mLplDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public showNewBie(I)Lcom/android/camera/fragment/dialog/BaseDialogFragment;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraScreenNail;->drawBlackFrame(Z)V

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showNewBie newBieType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const v3, 0x7f1300c1

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/android/camera/fragment/dialog/IDCardModeNewbieDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/IDCardModeNewbieDialogFragment;-><init>()V

    .line 5
    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "IDCardModeHint"

    .line 8
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 10
    iput-object v1, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_first_id_card_mode_use_hint_shown_key"

    .line 12
    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-object p1

    .line 14
    :cond_2
    new-instance p1, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;-><init>()V

    const v0, 0x7f1300b8

    .line 15
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "RotateHint"

    .line 17
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 19
    iput-object v1, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    return-object p1

    .line 20
    :cond_3
    new-instance p1, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;-><init>()V

    .line 21
    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "PortraitHint"

    .line 24
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 26
    iput-object v1, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_first_beauty_lens_use_hint_shown_key"

    .line 28
    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-object p1
.end method

.method public showNewNotification()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLunchFromAutoTest:Z

    if-nez v0, :cond_4

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_camera_first_notification_shown_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showNewNotification: locale does not match, return..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 12
    invoke-interface {v0, v2, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.miservice.MISERVICE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "intent_extra_key_flag"

    const-string v2, "2"

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_extra_key_label"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f12053e

    .line 16
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_extra_key_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f12053d

    .line 17
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_extra_key_content"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intent_extra_key_is_to_main"

    .line 18
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void

    .line 22
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showNewNotification: return..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startLensActivity()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLensActivity: isAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OooOOO0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OooOOO0;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V

    return-void
.end method

.method public streamingServerStatus(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "streaming server error occurred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {p2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->getStreamingServerPort(Landroid/os/Bundle;)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "streaming server started, port = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-static {p2, p1}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setStreamingServerPort(Landroid/os/Bundle;I)V

    .line 7
    iget p1, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    const-string v0, "device_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-static {p0, p2}, Lcom/xiaomi/camera/videocast/VideoCastService;->sendPayload(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public streamingSessionStatus(ILandroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown streaming status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onStreamingStopped"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->quit()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    .line 6
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-eqz p1, :cond_b

    .line 7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-object p2, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {p2, p1}, Lcom/xiaomi/camera/rcs/RemoteControl;->stopStreaming(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onStreamingStopped: stopStreaming failed"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onStreamingStarted"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_3

    .line 11
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onStreamingStarted: invalid session"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_3
    invoke-static {p2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->getCodecInputSurface(Landroid/os/Bundle;)Landroid/view/Surface;

    move-result-object v5

    if-nez v5, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onStreamingStarted: invalid codec surface"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onStreamingStarted: too many clients connected?"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    if-nez p1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onStreamingStarted: mode not available"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    if-nez p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onStreamingStarted: screennail not available"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    .line 21
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onStreamingStarted: surfaceview not available"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v4

    if-nez v4, :cond_9

    .line 23
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onStreamingStarted: EGLContext not available"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 24
    :cond_9
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v2

    .line 25
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result v3

    .line 26
    new-instance p1, Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    const/4 v6, 0x1

    const-string v1, "StreamingSurfaceRenderThread"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;-><init>(Ljava/lang/String;IILandroid/opengl/EGLContext;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    .line 27
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mLockStreamOrientation:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->setOrientationLocked(Z)V

    .line 28
    invoke-static {p2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->getVideoStreamSize(Landroid/os/Bundle;)Landroid/util/Size;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    if-lez p2, :cond_c

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    if-gtz p2, :cond_a

    goto :goto_1

    .line 30
    :cond_a
    iget-object p2, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    .line 31
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 33
    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->setCanvasSize(II)V

    .line 34
    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStreamingStarted: video quality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 36
    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->waitUntilReady()V

    :cond_b
    :goto_0
    return-void

    .line 37
    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onStreamingStarted: illegal video size"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/camera/ui/RenderEngineAdapter;->onSurfaceChanged(Landroid/view/SurfaceHolder;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->onSurfaceCreated()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->onSurfaceDestroyed()V

    :cond_0
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachBase()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->unRegisterProtocol()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    :cond_1
    return-void
.end method

.method public updateSurfaceState(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->updateSurfaceState(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/Camera;->mCamera2OpenOnSubscribe:Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->onGlSurfaceCreated()V

    .line 3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCapture()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/IAppStateMgr;->updatePreviewSurface()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateSurfaceState: module has not been initialized"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
