.class public Lcom/android/camera/CameraBrightness;
.super Ljava/lang/Object;
.source "CameraBrightness.java"

# interfaces
.implements Lcom/android/camera/CameraBrightnessCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;,
        Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
    }
.end annotation


# static fields
.field public static final SCREEN_AUTO_BRIGHTNESS_RATIO:F = 0.5f

.field public static final TAG:Ljava/lang/String; = "CameraBrightness"


# instance fields
.field public mBrightness:I

.field public mBrightnessMode:I

.field public mCameraBrightnessTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentActivity:Landroid/app/Activity;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mFirstFocusChanged:Z

.field public mPaused:Z

.field public mScreenAutoBrightnessRatio:F

.field public mUseDefaultValue:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    .line 3
    iput v0, p0, Lcom/android/camera/CameraBrightness;->mBrightnessMode:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/CameraBrightness;->mScreenAutoBrightnessRatio:F

    .line 5
    iput-object p1, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    .line 8
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/camera/CameraBrightness;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private adjustBrightness()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->cancelLastTask()V

    .line 3
    new-instance v0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;

    iget-object v2, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    iget-boolean v5, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    iget v6, p0, Lcom/android/camera/CameraBrightness;->mScreenAutoBrightnessRatio:F

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Landroid/app/Activity;Lcom/android/camera/CameraBrightnessCallback;ZZF)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private cancelLastTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustBrightnessInAutoMode(F)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setTemporaryAutoBrightnessAdjustment(Landroid/hardware/display/DisplayManager;F)V

    .line 2
    iput p1, p0, Lcom/android/camera/CameraBrightness;->mScreenAutoBrightnessRatio:F
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Meet exception when adjustBrightnessInAutoMode(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraBrightness"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCurrentBrightness()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return v0
.end method

.method public getCurrentBrightnessAuto()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mScreenAutoBrightnessRatio:F

    return v0
.end method

.method public getCurrentBrightnessManual()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return v0
.end method

.method public getPreviousBrightnessMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mBrightnessMode:I

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPause mUseDefaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraBrightness"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    if-nez v1, :cond_0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/CameraBrightness;->mScreenAutoBrightnessRatio:F

    const-string v0, "CameraBrightness"

    const-string/jumbo v1, "onResume adjustBrightness"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWindowFocusChanged hasFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFirstFocusChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraBrightness"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    if-ne v0, p1, :cond_1

    xor-int/2addr p1, v1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    :cond_1
    return-void
.end method

.method public setBrightness(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return-void
.end method

.method public setPreviousBrightnessMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/CameraBrightness;->mBrightnessMode:I

    return-void
.end method
