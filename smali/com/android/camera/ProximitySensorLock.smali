.class public Lcom/android/camera/ProximitySensorLock;
.super Ljava/lang/Object;
.source "ProximitySensorLock.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final DELAY_CHECK_TIMEOUT:I = 0x12c

.field public static final MSG_DELAY_CHECK:I = 0x2

.field public static final MSG_TIMEOUT:I = 0x1

.field public static final PROXIMITY_THRESHOLD:I = 0x3

.field public static final SHORTCUT_UNLOCK:I

.field public static final TAG:Ljava/lang/String; = "ProximitySensorLock"

.field public static final TIMEOUT:I = 0x7530


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mFromVolumeKey:Z

.field public mHintView:Landroid/view/View;

.field public volatile mJudged:Z

.field public mKeyPressed:I

.field public mKeyPressing:I

.field public mProximityNear:Ljava/lang/Boolean;

.field public mProximitySensor:Landroid/hardware/Sensor;

.field public volatile mResumeCalled:Z

.field public mWorkerHandler:Landroid/os/Handler;

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/android/camera/ProximitySensorLock;->getKeyBitmask(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/android/camera/ProximitySensorLock;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/camera/ProximitySensorLock;->SHORTCUT_UNLOCK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    .line 4
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isFromVolumeKey()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "from volume key ->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProximitySensorLock"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    .line 9
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 10
    iput-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 11
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Proximity sensor lock"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    .line 12
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance p1, Lcom/android/camera/ProximitySensorLock$1;

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/camera/ProximitySensorLock$1;-><init>(Lcom/android/camera/ProximitySensorLock;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ProximitySensorLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->exit()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/ProximitySensorLock;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/ProximitySensorLock;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/ProximitySensorLock;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/ProximitySensorLock;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ProximitySensorLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->judge()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/ProximitySensorLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->doShow()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/ProximitySensorLock;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    return-object p0
.end method

.method private doShow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->inflateHint()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    .line 8
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 10
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 11
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, -0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 14
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    const v2, 0x7f0a0372

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 18
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static enabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->supported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isProximityLockOpen()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isNonUIEnabled()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private exit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ProximitySensorLock"

    const-string v1, "Finish activity, exiting."

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getKeyBitmask(I)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/16 v0, 0x52

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbb

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/16 p0, 0x10

    return p0

    :pswitch_1
    const/16 p0, 0x20

    return p0

    :pswitch_2
    const/16 p0, 0x40

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 p0, 0x8

    return p0

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hide()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/ProximitySensorLock$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ProximitySensorLock$3;-><init>(Lcom/android/camera/ProximitySensorLock;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private inflateHint()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d016c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static isEllipticProximity()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    const-string/jumbo v0, "ro.vendor.audio.us.proximity"

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ro.audio.us.proximity"

    .line 3
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private isFromSnap()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private judge()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "Psensor_volume"

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackPocketModeEnter(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->exit()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Psensor_keyguard"

    .line 6
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackPocketModeEnter(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->show()V

    goto :goto_1

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    .line 9
    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    return-void
.end method

.method private resetKeyStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    .line 2
    iput v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    return-void
.end method

.method private shouldBeBlocked(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_1

    const/16 v1, 0x7e

    if-eq p1, v1, :cond_1

    const/16 v1, 0x7f

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private show()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/ProximitySensorLock$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ProximitySensorLock$2;-><init>(Lcom/android/camera/ProximitySensorLock;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopWatching()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopWatching proximity sensor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProximitySensorLock"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 4
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWorkerThread()V

    return-void
.end method

.method private stopWorkerThread()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    :goto_0
    iput-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    .line 6
    :cond_1
    iput-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    return-void
.end method

.method public static supported()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Ooo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->isEllipticProximity()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public active()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public destroy()V
    .locals 2

    const-string v0, "ProximitySensorLock"

    const-string v1, "destroying"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->hide()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWorkerThread()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public intercept(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/camera/ProximitySensorLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v1, v2

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 4
    invoke-static {p1}, Lcom/android/camera/ProximitySensorLock;->getKeyBitmask(I)I

    move-result p1

    .line 5
    iget v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    iget v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    .line 8
    iget v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    goto :goto_0

    .line 9
    :cond_3
    iget v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    sget v0, Lcom/android/camera/ProximitySensorLock;->SHORTCUT_UNLOCK:I

    if-ne p1, v0, :cond_4

    const-string p1, "keyguard_exit_dismiss"

    .line 11
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPocketModeExit(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->hide()V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public isDataInit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume enabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFromVolumeKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mProximityNear "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProximitySensorLock"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->judge()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v3, v2

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    aget v3, v3, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 3
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    .line 4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSensorChanged near "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", values "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", max "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ProximitySensorLock"

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-enter p0

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 6
    :goto_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    .line 11
    iget-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 13
    :cond_5
    iget-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    if-nez v1, :cond_6

    return-void

    :cond_6
    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 14
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->judge()V

    return-void

    .line 15
    :cond_7
    iget-boolean p1, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    if-eqz p1, :cond_9

    if-eqz v3, :cond_8

    const-string p1, "keyguard_exit_unlock"

    .line 16
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPocketModeExit(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->hide()V

    goto :goto_4

    :cond_8
    const-string p1, "Psensor_keyguard"

    .line 18
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPocketModeEnter(Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->show()V

    :cond_9
    :goto_4
    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public shouldQuitSnap()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldQuit fromSnap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", proximity ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProximitySensorLock"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "Psensor_snap"

    .line 3
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPocketModeEnter(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public startWatching()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startWatching proximity sensor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProximitySensorLock"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    .line 5
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    .line 6
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    .line 7
    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method
