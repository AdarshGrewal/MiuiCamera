.class public abstract Lcom/android/camera/ActivityBase;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/AppController;
.implements Lcom/android/camera/module/loader/SurfaceStateListener;
.implements Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ActivityBase$SaveGaussian2File;,
        Lcom/android/camera/ActivityBase$ActivityHandler;
    }
.end annotation


# static fields
.field public static final MSG_CAMERA_OPEN_EXCEPTION:I = 0xa

.field public static final MSG_CHECK_AUTO_DOWNLOAD_FEATURE:I = 0x9

.field public static final MSG_DEBUG_INFO:I = 0x0

.field public static final MSG_GIVE_UP_RECOVER_FROM_CAMERA_ERROR:I = 0x7

.field public static final MSG_KEYGUARD_TWICE_RESUME:I = 0x1

.field public static final MSG_ON_THERMAL_CONTRAINT:I = 0x3

.field public static final MSG_REQUEST_THEME_CHANGE:I = 0x8

.field public static final MSG_REUPDATE_THERMAL:I = 0x6

.field public static final MSG_TRACK_MODE_SWITCH:I = 0x2

.field public static final RECOVER_TIMEOUT_MILLISECONDS:I = 0x1388

.field public static final START_GALLERY_TIMEOUT:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "ActivityBase"

.field public static final TOUCH_EVENT_TRACK_TIME_OUT:I = 0x3e8


# instance fields
.field public volatile mActivityNewIntent:Z

.field public volatile mActivityPaused:Z

.field public volatile mActivityStarted:Z

.field public volatile mActivityStopped:Z

.field public mAppLunchMap:Ljava/util/HashMap;

.field public mAppStartTime:J

.field public mApplication:Lcom/android/camera/CameraAppImpl;

.field public mBlurStartTime:J

.field public mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public mCameraBrightness:Lcom/android/camera/CameraBrightness;

.field public mCameraErrorShown:Z

.field public mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mCameraRootView:Lcom/android/camera/ui/CameraRootView;

.field public mCameraSound:Lcom/android/camera/MiuiCameraSound;

.field public mCloseActivityThread:Ljava/lang/Thread;

.field public mCurrentModeUI:Lcom/android/camera/fragment/modeui/IModeUI;

.field public mCurrentModule:Lcom/android/camera/module/Module;

.field public mCurrentSurfaceState:I

.field public mDebugInfoView:Landroid/widget/TextView;

.field public mDisplayRotation:I

.field public mErrorCameraId:Ljava/lang/String;

.field public mErrorDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mGLCoverDisposable:Lio/reactivex/disposables/Disposable;

.field public mGLCoverView:Landroid/widget/ImageView;

.field public mGalleryLocked:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsFinishInKeyguard:Z

.field public mIsRecoveringFromCameraError:Z

.field public mIsSwitchingModule:Z

.field public mJumpFlag:I

.field public mJumpedToGallery:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mKeyguardSecureLocked:Z

.field public mLastJumpFlag:I

.field public mLocationManager:Lcom/android/camera/LocationManager;

.field public mModeSelectGaussianTime:J

.field public mModeSwitchTime:J

.field public mOrientation:I

.field public mOrientationCompensation:I

.field public mPreviewThumbnail:Z

.field public mReleaseByModule:Z

.field public mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

.field public mRequestDismissKeyguarding:Z

.field public mScreenHint:Lcom/android/camera/ui/ScreenHint;

.field public mSecureUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

.field public mShortcutFunction:Lcom/android/camera/ShortcutFunction;

.field public mStartFromKeyguard:Z

.field public mSurfaceView:Landroid/view/SurfaceView;

.field public mTTSHelper:Lcom/android/camera/tts/TTSHelper;

.field public mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

.field public mTrackAppLunchDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    .line 7
    iput v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 8
    iput v0, p0, Lcom/android/camera/ActivityBase;->mLastJumpFlag:I

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mRequestDismissKeyguarding:Z

    .line 11
    new-instance v0, Lcom/android/camera/ActivityBase$ActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$ActivityHandler;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    .line 13
    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I

    .line 15
    new-instance v0, Lcom/android/camera/ActivityBase$6;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$6;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->giveUpRecoverFromCameraError()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/ActivityBase;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase;->showBlurView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/camera/ActivityBase;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mAppLunchMap:Ljava/util/HashMap;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ActivityBase;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ActivityBase;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mErrorCameraId:Ljava/lang/String;

    return-object p0
.end method

.method private addSecureUriIfNecessary(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private getSecureStoreIds()[J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 4
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-array v0, v1, [J

    return-object v0
.end method

.method private giveUpRecoverFromCameraError()V
    .locals 3

    const-string v0, "ActivityBase"

    const-string v1, "giveUpRecoverFromCameraError"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mErrorCameraId:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "giveUpRecoverFromCameraError: finish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private registerAvailabilityCallback()V
    .locals 3

    const-string v0, "camera"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private showBlurView(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private unregisterAvailabilityCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public checkFeatureAutoDownload()V
    .locals 0

    return-void
.end method

.method public checkGalleryLock()V
    .locals 2

    const-string v0, "com.miui.gallery"

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/Util;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGalleryLock: galleryLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkKeyguardFlag()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 4
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    const/high16 v3, 0x80000

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 6
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mRequestDismissKeyguarding:Z

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 9
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    .line 10
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    const-string v1, "ActivityBase"

    if-nez v0, :cond_2

    const-string v0, "checkKeyguard: setShowWhenLocked:false"

    .line 12
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 15
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setStartFromKeyguard(Z)V

    .line 16
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    goto :goto_2

    .line 18
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    .line 20
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkKeyguard: fromKeyguard="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " keyguardSecureLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " secureUriList is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    const-string v2, "null"

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not null ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearNotification()V
    .locals 1

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    return-void
.end method

.method public couldShowErrorDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public dismissBlurCover()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 3
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/ActivityBase$3;

    invoke-direct {v3, p0}, Lcom/android/camera/ActivityBase$3;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-wide v3, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    .line 7
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    goto :goto_0

    .line 8
    :cond_1
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    :cond_2
    :goto_0
    return-void
.end method

.method public dismissKeyguard()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public getCameraAppImpl()Lcom/android/camera/CameraAppImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method

.method public getCameraIntentManager()Lcom/android/camera/CameraIntentManager;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    return-object v0
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentModule()Lcom/android/camera/module/Module;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public getKeyguardFlag()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isQuickLaunch()Z

    move-result v0

    return v0
.end method

.method public getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModeUI:Lcom/android/camera/fragment/modeui/IModeUI;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    return v0
.end method

.method public getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    return-object v0
.end method

.method public getScreenHint()Lcom/android/camera/ui/ScreenHint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    return-object v0
.end method

.method public getSecureUriList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSetupWizard()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutFunction()Lcom/android/camera/ShortcutFunction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShortcutFunction:Lcom/android/camera/ShortcutFunction;

    return-object v0
.end method

.method public getSoundPlayTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->getLastSoundPlayTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSurfaceCreatedTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTTSHelper()Lcom/android/camera/tts/TTSHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    return-object v0
.end method

.method public getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    return-object v0
.end method

.method public gotoGallery()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string/jumbo v2, "shot_2_gallery"

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    if-eqz v0, :cond_12

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ActivityBase"

    if-nez v1, :cond_1

    const-string v1, "gotoGallery: thumbnail uri is not ready"

    .line 5
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->isWaitingForUri()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached(Z)V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v4}, Lcom/android/camera/ThumbnailUpdater;->getLastUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gotoGallery: invalid thumbnail uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->isWaitingForUri()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached(Z)V

    :cond_2
    return-void

    .line 12
    :cond_3
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gotoGallery: thumbnail uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->onPrelaunchGallery(Lcom/android/camera/Thumbnail;)V

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v4
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "com.miui.gallery"

    const-string v6, "com.android.camera.action.REVIEW"

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    .line 15
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "com.google.android.apps.photos"

    .line 16
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 17
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.miui.camera.action.REVIEW"

    invoke-direct {v4, v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 19
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.SPILIT_SCREEN_REVIEW"

    invoke-direct {v4, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v6, 0x10009000

    .line 20
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const-string v4, "gotoGallery: com.android.camera.action.REVIEW"

    .line 21
    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 23
    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "from_MiuiCamera"

    .line 24
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    :goto_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 26
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v6}, Lcom/android/camera/CameraBrightness;->getCurrentBrightnessAuto()F

    move-result v6

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_6

    const-string v6, "camera-brightness-auto"

    .line 27
    iget-object v8, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v8}, Lcom/android/camera/CameraBrightness;->getCurrentBrightnessAuto()F

    move-result v8

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    const-string v6, "camera-brightness-manual"

    .line 28
    iget-object v8, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v8}, Lcom/android/camera/CameraBrightness;->getCurrentBrightnessManual()I

    move-result v8

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "camera-brightness"

    .line 29
    iget-object v8, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v8}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v8

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 31
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v6

    invoke-virtual {v6}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "com.google.android.apps.photos.api.secure_mode"

    .line 32
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 33
    :cond_8
    invoke-static {v4, v7}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 34
    :cond_9
    :goto_3
    invoke-static {p0, v5}, Lcom/android/camera/Util;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "skip_interception"

    .line 35
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    :cond_a
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->isGif()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 37
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getGifWidth()I

    move-result v5

    const/16 v6, 0x12c

    if-gtz v5, :cond_b

    move v5, v6

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getGifWidth()I

    move-result v5

    .line 38
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gotoGallery: gifWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getGifHeight()I

    move-result v8

    if-gtz v8, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getGifHeight()I

    move-result v6

    .line 40
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gotoGallery: gifHeight: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "photo_width"

    .line 41
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "photo_height"

    .line 42
    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "photo_mime_type"

    const-string v5, "image/gif"

    .line 43
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :cond_d
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 45
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "com.google.android.apps.photos.api.secure_mode_ids"

    .line 46
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->getSecureStoreIds()[J

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_6

    :cond_e
    const-string v0, "SecureUri"

    .line 47
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 48
    :cond_f
    :goto_6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoooO()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "using_deputy_screen"

    .line 49
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_10
    const-string v0, "device_orientation"

    .line 50
    iget v5, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 52
    iput v7, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 53
    iput-boolean v7, p0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    .line 54
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_12

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    .line 57
    :cond_11
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackGotoGallery(I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string/jumbo v2, "review activity not found!"

    .line 58
    invoke-static {v3, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "review image fail. uri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_7
    return-void
.end method

.method public handleCameraError(I)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    .line 2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "handleCameraError: recovering = %b, paused = %b"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mErrorCameraId:Ljava/lang/String;

    .line 6
    iput-boolean v3, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    .line 7
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized hasSurface()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->onResume()V

    goto :goto_0

    :cond_1
    const-string v0, "ActivityBase"

    const-string v1, "hasSurface():SURFACE_STATE_OK mRenderEngine is null"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return v2

    :cond_2
    const/4 v0, 0x1

    .line 7
    monitor-exit p0

    return v0

    .line 8
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/camera/display/Display;->isFullScreenNavBarHidden()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OooO00o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OooO00o;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->onResume()V

    goto :goto_1

    :cond_5
    const-string v0, "ActivityBase"

    const-string v1, "hasSurface():SURFACE_STATE_PAUSED mRenderEngine is null"

    .line 12
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isActivityNewIntent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityNewIntent:Z

    return v0
.end method

.method public isActivityPaused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    return v0
.end method

.method public isActivityStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityStarted:Z

    return v0
.end method

.method public isActivityStopped()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityStopped:Z

    return v0
.end method

.method public isCameraAliveWhenResume()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookies()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    .line 3
    iget-object v3, v3, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/IModuleState;->isCreated()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/IModuleState;->isDeparted()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 5
    iget-boolean v5, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    .line 6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "isCameraAliveWhenResume: mRealeaseByModule: %b, isModuleAlive: %b, isCameraDevicesAlive: %b"

    .line 7
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityBase"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public isGalleryLocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    return v0
.end method

.method public isGotoGallery()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isGotoLiveMusic()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGotoSettings()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGotoWorkspace()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJumpBack()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mLastJumpFlag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPostProcessing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isPostProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewThumbnail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPreviewThumbnail:Z

    return v0
.end method

.method public isShowBottomIntentDone()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_1

    const v1, 0x7f0a0093

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v1, 0xff3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwitchingModule()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsSwitchingModule:Z

    return v0
.end method

.method public loadCameraSound(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    :cond_0
    return-void
.end method

.method public abstract notifyOnFirstFrameArrived(I)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const p2, 0x8c35

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase;->addSecureUriIfNecessary(Landroid/net/Uri;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p1, :cond_0

    instance-of p2, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz p2, :cond_0

    .line 5
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p1}, Lcom/android/camera/module/Camera2Module;->forIDCardResult()V

    :cond_0
    return-void
.end method

.method public onConfigThemeRequest(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isContentViewExtendToTopEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 5
    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    .line 6
    new-instance v0, Lcom/android/camera/ui/ScreenHint;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ScreenHint;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    .line 7
    new-instance v0, Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {v0, p0}, Lcom/android/camera/ThumbnailUpdater;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    const-string v0, "keyguard"

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 11
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 12
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o000O()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    new-instance v0, Lcom/android/camera/ShortcutFunction;

    invoke-direct {v0}, Lcom/android/camera/ShortcutFunction;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mShortcutFunction:Lcom/android/camera/ShortcutFunction;

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/camera/ShortcutFunction;->initShortcut(Landroid/content/Context;)V

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    move v0, p1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 17
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isFromVolumeKey()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move p1, v1

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    const-string p1, "ActivityBase"

    const-string/jumbo v0, "onCreate: addFlag --> FLAG_TURN_SCREEN_ON"

    .line 18
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 20
    :cond_7
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraAppImpl;->addActivity(Landroid/app/Activity;)V

    .line 21
    new-instance p1, Lcom/android/camera/CameraBrightness;

    invoke-direct {p1, p0}, Lcom/android/camera/CameraBrightness;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    .line 22
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 23
    new-instance p1, Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/RenderEngineAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0o0O()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getLastFrameGaussianBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ActivityBase$SaveGaussian2File;

    invoke-direct {v2, v0}, Lcom/android/camera/ActivityBase$SaveGaussian2File;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->removeActivity(Landroid/app/Activity;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mTrackAppLunchDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 8
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mTrackAppLunchDisposable:Lio/reactivex/disposables/Disposable;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/tts/TTSHelper;->cleanup()V

    .line 13
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->destroy()V

    .line 16
    :cond_4
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    .line 17
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onFrameAvailable(I)V
    .locals 7

    const-string v0, "ActivityBase"

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne v3, p1, :cond_1

    .line 1
    iget-wide v3, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    sub-long/2addr v3, v5

    .line 3
    invoke-static {v3, v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackStartAppCost(J)V

    .line 4
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mAppLunchMap:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 5
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mAppLunchMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackAppLunchTimeEnd(Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v5, Lcom/android/camera/statistic/ScenarioTrackUtil;->sLaunchTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    invoke-static {v5}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;)V

    .line 7
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFrameAvailable: trackStartAppCost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", start time: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", now: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_1
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    goto :goto_2

    .line 12
    :cond_1
    iget-wide v3, p0, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    sub-long/2addr v3, v5

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFrameAvailable: trackModeSwitchCost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    .line 16
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->dismissBlurCover()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->notifyOnFirstFrameArrived(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayoutChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->setCameraPreviewRect(Landroid/graphics/Rect;Z)V

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->checkGalleryLock()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag()V

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/common/IAppStateMgr;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase;->addSecureUriIfNecessary(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->onPause()V

    :cond_0
    return-void
.end method

.method public onPrelaunchGallery(Lcom/android/camera/Thumbnail;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v0

    const-string v1, "killed-moduleIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 2
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->initCameraThermal()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->onResume()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->registerAvailabilityCallback()V

    .line 6
    invoke-static {}, Lcom/android/camera/performance/MqsHelper;->traceStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCameraThermal()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoSettings()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoLiveMusic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoWorkspace()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 4
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->onPause()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->unregisterAvailabilityCallback()V

    .line 9
    invoke-static {}, Lcom/android/camera/performance/MqsHelper;->traceStop()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 0

    return-void
.end method

.method public onThermalNotification(I)V
    .locals 0

    return-void
.end method

.method public playCameraSound(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0, p1}, Lcom/android/camera/MiuiCameraSound;->playSound(I)V

    return-void
.end method

.method public playCameraSound(IF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MiuiCameraSound;->playSound(IF)V

    return-void
.end method

.method public recoverFromCameraError()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsRecoveringFromCameraError:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mErrorCameraId:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public requestChangeWCGConfig()V
    .locals 0

    return-void
.end method

.method public resetStartTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    return-void
.end method

.method public final restartModule(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 6
    invoke-interface {p0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public setErrorDialog(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mErrorDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public setJumpFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RenderEngineAdapter;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public setPreviewThumbnail(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mPreviewThumbnail:Z

    return-void
.end method

.method public setSwitchingModule(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsSwitchingModule:Z

    return-void
.end method

.method public showBlurCover()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isShowBottomIntentDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isCameraAliveWhenResume()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isPostProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isFromScreenSlide()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->isHasBackLightSensor()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isJumpBack()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 6
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0o0O()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v3}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getLastFrameGaussianBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_6

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v0, "ActivityBase"

    const-string/jumbo v1, "showBlurCover: blur bitmap from memory!"

    .line 11
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0, v2}, Lcom/android/camera/ActivityBase;->showBlurView(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 13
    :cond_6
    new-instance v2, Lcom/android/camera/ActivityBase$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ActivityBase$1;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 14
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 15
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/android/camera/ActivityBase$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/camera/ActivityBase$2;-><init>(Lcom/android/camera/ActivityBase;J)V

    .line 16
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 17
    :cond_7
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 21
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 22
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mBlurStartTime:J

    :cond_8
    :goto_1
    return-void
.end method

.method public showDebugInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showErrorDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    return-void
.end method

.method public startFromKeyguard()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    return v0
.end method

.method public startFromSecureKeyguard()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    return v0
.end method

.method public trackAppLunchTimeStart(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackAppLunchTimeStart(Z)V

    .line 2
    new-instance p1, Lcom/android/camera/ActivityBase$4;

    invoke-direct {p1, p0}, Lcom/android/camera/ActivityBase$4;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/android/camera/ActivityBase$5;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$5;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mTrackAppLunchDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public declared-synchronized updateSurfaceState(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ActivityBase"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurfaceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
