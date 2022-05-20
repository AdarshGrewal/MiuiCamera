.class public Lcom/android/camera/display/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field public static final DISPLAY_RATIO_123:Ljava/lang/String; = "4:3"

.field public static final DISPLAY_RATIO_169:Ljava/lang/String; = "16:9"

.field public static final DISPLAY_RATIO_456:Ljava/lang/String; = "3:1"

.field public static final DISPLAY_RATIO_789:Ljava/lang/String; = "16:10"

.field public static final DISPLAY_RATIO_MULTI_WINDOW:Ljava/lang/String; = "MW"

.field public static final DISPLAY_TYPE_MULTI_FOLDER:I = 0x2

.field public static final DISPLAY_TYPE_MULTI_NORMAL:I = 0x1

.field public static final DISPLAY_TYPE_SINGLE:I = 0x0

.field public static final MIUI_MULTI_DMS_NAME:Ljava/lang/String; = "miui_multi_display"

.field public static SUB_SCREEN_DISPLAY_NUM:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Display"

.field public static isNotchDevice:Z = false

.field public static mDisplayRectCompat:Lcom/android/camera/display/IDisplayRect; = null

.field public static mIsInMultiWindowMode:Z = false

.field public static mIsInitialized:Z = false

.field public static sAppBoundHeight:I = 0x438

.field public static sAppBoundWidth:I = 0x2d0

.field public static sDisplayHeight:I = 0x438

.field public static sDisplayWidth:I = 0x2d0

.field public static sHasNavigationBar:Z = false

.field public static sIsFullScreenNavBarHidden:Z = false

.field public static sIsnotchScreenHidden:Z = false

.field public static sNavigationBarHeight:I = 0x0

.field public static sPixelDensity:F = 1.0f

.field public static sPixelDensityScale:F = 1.0f

.field public static sScreenOriention:I

.field public static sStatusBarHeight:I

.field public static sWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/display/Display;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/camera/display/Display;->sWindowManager:Landroid/view/IWindowManager;

    .line 4
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->hasNavigationBar(Landroid/content/Context;Landroid/view/IWindowManager;)Z

    move-result p0

    sput-boolean p0, Lcom/android/camera/display/Display;->sHasNavigationBar:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v0, "checkDeviceHasNavigationBar exception"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    :goto_0
    sget-boolean p0, Lcom/android/camera/display/Display;->sHasNavigationBar:Z

    return p0
.end method

.method public static checkMultiWindowSupport(Landroid/app/Activity;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/display/Display;->enterPadPcMode(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f1205a6

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v3, "checkMultiWindowSupport call finish, current is pad in pc mode"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isVideoCastIntent()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    .line 8
    :goto_1
    invoke-static {}, Lcom/android/camera/display/Display;->supportMultiWindow()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraIntentManager;->isLaunchFromLockscreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/display/Display;->isFreeformMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->supportMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/display/Display;->isFreeformMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o000O()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f1205ba

    .line 11
    invoke-static {p0, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_2

    .line 12
    :cond_5
    invoke-static {p0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    .line 13
    :goto_2
    sget-object v0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v1, "checkMultiWindowSupport call finish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_6
    return v4
.end method

.method public static checkScreenSize(II)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/display/IDisplayRect;->checkScreenSize(II)Z

    move-result p0

    return p0
.end method

.method public static enterPadPcMode(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0Oo:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/display/Display;->isFreeformMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v0, "enterPadPcMode"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static fitDisplay16_10()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    const-string v1, "16:10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static fitDisplayFat()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4:3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static fitDisplayThin()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3:1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static getAppBoundHeight()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/display/Display;->sAppBoundHeight:I

    return v0
.end method

.method public static getAppBoundWidth()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/display/Display;->sAppBoundWidth:I

    return v0
.end method

.method public static getBackgroundLeftMargin()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getBackgroundLeftMargin()I

    move-result v0

    return v0
.end method

.method public static getBottomBarHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getBottomBarHeight()I

    move-result v0

    return v0
.end method

.method public static getBottomHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getBottomHeight()I

    move-result v0

    return v0
.end method

.method public static getBottomMargin()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getBottomMargin()I

    move-result v0

    return v0
.end method

.method public static getCenterDisplayHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getCenterDisplayHeight()I

    move-result v0

    return v0
.end method

.method public static getCenterDisplayWidth()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getCenterDisplayWidth()I

    move-result v0

    return v0
.end method

.method public static getDegreeByScreenOrientation(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xb4

    return p0

    :cond_1
    const/16 p0, 0x10e

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method

.method public static getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/display/Display;->mDisplayRectCompat:Lcom/android/camera/display/IDisplayRect;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/display/Display;->mDisplayRectCompat:Lcom/android/camera/display/IDisplayRect;

    return-object v0
.end method

.method public static getDisplayFoldState()Z
    .locals 2

    const-string v0, "miui_multi_display"

    .line 1
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->getCurrentFoldState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4
    :catch_0
    sget-object v0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentFoldState fail!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v1, "multi display manager service no found! "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getDisplayHeight()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/display/Display;->sDisplayHeight:I

    return v0
.end method

.method public static getDisplayRatio()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getDisplayRect(I)Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/display/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayWidth()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/display/Display;->sDisplayWidth:I

    return v0
.end method

.method public static getDragDistanceFix()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getDragDistanceFix()I

    move-result v0

    return v0
.end method

.method public static getDragLayoutTopMargin()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getDragLayoutTopMargin()I

    move-result v0

    return v0
.end method

.method public static getGestureLineHeight(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/display/Display;->isEnableGestureLine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/camera/display/Display;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getMarginEnd()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getMarginEnd()I

    move-result v0

    return v0
.end method

.method public static getMarginStart()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getMarginStart()I

    move-result v0

    return v0
.end method

.method public static getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getMoreModePrefVideo(Z)[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/display/IDisplayRect;->getMoreModePrefVideo(Z)[I

    move-result-object p0

    return-object p0
.end method

.method public static getMoreModeTabCol(ZZ)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabCol(ZZ)I

    move-result p0

    return p0
.end method

.method public static getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method public static getMoreModeTabRow(IZ)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabRow(IZ)I

    move-result p0

    return p0
.end method

.method public static getMuiltDisplayType()I
    .locals 2

    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNavigationBarHeight()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/display/Display;->sNavigationBarHeight:I

    return v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 5
    sget-object v0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navBarHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getPixelDensity()F
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/display/Display;->sPixelDensity:F

    return v0
.end method

.method public static getScreenOrientation()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/display/Display;->sScreenOriention:I

    return v0
.end method

.method public static getScreenOrientation(I)I
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public static getSquareBottomCoverHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result v0

    return v0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/display/Display;->sStatusBarHeight:I

    return v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070154

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getTipsMarginTop(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/display/IDisplayRect;->getTipsMarginTop(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getTopBarHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getTopBarHeight()I

    move-result v0

    return v0
.end method

.method public static getTopBarWidth(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/display/IDisplayRect;->getTopBarWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getTopCoverHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getTopCoverHeight()I

    move-result v0

    return v0
.end method

.method public static getTopHeight()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getTopMargin()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/display/IDisplayRect;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getTopMargin()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getTopMargin()I

    move-result v0

    return v0
.end method

.method public static getWindowManager()Landroid/view/IWindowManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/display/Display;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/camera/display/Display;->sWindowManager:Landroid/view/IWindowManager;

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/display/Display;->sWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method public static getsPixelDensityScale()F
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/display/Display;->sPixelDensityScale:F

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 6

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string p1, "initialize: context is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/android/camera/display/Display;->enterPadPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string p1, "initialize return, current is pad in pc mode"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    sput-boolean p1, Lcom/android/camera/display/Display;->mIsInMultiWindowMode:Z

    .line 6
    invoke-static {p0}, Lcom/android/camera/display/Display;->isNotchScreenHidden(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/display/Display;->sIsnotchScreenHidden:Z

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.miui.notch"

    .line 7
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/android/camera/display/Display;->sIsnotchScreenHidden:Z

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/android/camera/display/Display;->isNotchDevice:Z

    .line 8
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "laurel_sprout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    sget-boolean v1, Lcom/android/camera/display/Display;->sIsnotchScreenHidden:Z

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/android/camera/display/Display;->isNotchDevice:Z

    .line 10
    :cond_3
    invoke-static {p0}, Lcom/android/camera/display/Display;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/display/Display;->sIsFullScreenNavBarHidden:Z

    .line 11
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v3, "window"

    .line 12
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 13
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 14
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/android/camera/display/Display;->sPixelDensity:F

    .line 15
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 16
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 17
    iget v3, v4, Landroid/graphics/Point;->x:I

    iget v5, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/android/camera/display/Display;->sAppBoundWidth:I

    sput v3, Lcom/android/camera/display/Display;->sDisplayWidth:I

    .line 18
    iget v3, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lcom/android/camera/display/Display;->sAppBoundHeight:I

    sput v3, Lcom/android/camera/display/Display;->sDisplayHeight:I

    if-eqz p1, :cond_4

    .line 19
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt p1, v3, :cond_4

    const/16 p1, 0x33a

    .line 20
    sput p1, Lcom/android/camera/display/Display;->sAppBoundWidth:I

    const/16 p1, 0x9b0

    .line 21
    sput p1, Lcom/android/camera/display/Display;->sAppBoundHeight:I

    .line 22
    :cond_4
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "hercules"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x8c4

    .line 23
    sput p1, Lcom/android/camera/display/Display;->sDisplayHeight:I

    .line 24
    :cond_5
    sget-object p1, Lcom/android/camera/display/Display;->mDisplayRectCompat:Lcom/android/camera/display/IDisplayRect;

    if-eqz p1, :cond_6

    sget p1, Lcom/android/camera/display/Display;->sAppBoundWidth:I

    sget v3, Lcom/android/camera/display/Display;->sAppBoundHeight:I

    invoke-static {p1, v3}, Lcom/android/camera/display/Display;->checkScreenSize(II)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 25
    :cond_6
    iget p1, v1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/android/camera/display/Display;->sPixelDensity:F

    .line 26
    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    sget v1, Lcom/android/camera/display/Display;->sPixelDensity:F

    div-float/2addr p1, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr p1, v1

    sput p1, Lcom/android/camera/display/Display;->sPixelDensityScale:F

    .line 27
    sput-boolean v2, Lcom/android/camera/display/Display;->mIsInitialized:Z

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/display/Display;->initDisplayCompat(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p0

    sput p0, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    .line 30
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize: sCenterDisplayHeight = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sTopMargin = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sTopBarHeight = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sBottomMargin = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sBottomBarHeight = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windowSize = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayHeight()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", appBoundSize = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNotchDevice = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/camera/display/Display;->isNotchDevice:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsInitialized = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/camera/display/Display;->mIsInitialized:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    sget v2, Lcom/android/camera/display/Display;->sPixelDensity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    const-string/jumbo v0, "windowSize=%dx%d density=%.4f"

    .line 40
    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initDisplayCompat(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/display/DisplayParameter;

    invoke-direct {v0}, Lcom/android/camera/display/DisplayParameter;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    iput v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    iput v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->isNotchDevice()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/display/DisplayParameter;->isNotchDevice:Z

    .line 5
    invoke-static {p0}, Lcom/android/camera/display/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Lcom/android/camera/display/DisplayParameter;->statusBarHeight:I

    .line 6
    sget-boolean p0, Lcom/android/camera/display/Display;->mIsInMultiWindowMode:Z

    iput-boolean p0, v0, Lcom/android/camera/display/DisplayParameter;->isInMultiWindow:Z

    .line 7
    new-instance p0, Lcom/android/camera/display/DisplayAdapter;

    invoke-direct {p0, v0}, Lcom/android/camera/display/DisplayAdapter;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    sput-object p0, Lcom/android/camera/display/Display;->mDisplayRectCompat:Lcom/android/camera/display/IDisplayRect;

    return-void
.end method

.method public static initStatusBarHeight(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/display/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/camera/display/Display;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/camera/display/Display;->sNavigationBarHeight:I

    .line 3
    invoke-static {p0}, Lcom/android/camera/display/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/android/camera/display/Display;->sStatusBarHeight:I

    return-void
.end method

.method public static isContentViewExtendToTopEdges()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/display/Display;->isNotchDevice:Z

    return v0
.end method

.method public static isDisplaySizeChange(Landroid/content/Context;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v1, "window"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 4
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 5
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    sget v1, Lcom/android/camera/display/Display;->sDisplayWidth:I

    if-ne v1, p0, :cond_1

    sget p0, Lcom/android/camera/display/Display;->sDisplayHeight:I

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 7
    :goto_1
    sget-object v0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is display size change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isEnableGestureLine(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    invoke-static {p0, v0}, Lcom/xiaomi/compat/miui/MiuiSettingsCompat$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    sget-boolean p0, Lcom/android/camera/display/Display;->sHasNavigationBar:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :cond_1
    return v0
.end method

.method public static isFoldDisplayType()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getMuiltDisplayType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFreeformMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 p0, p0, 0x3000

    .line 2
    sget-object v1, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFreeformMode.pcStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    const/16 v1, 0x1000

    if-eq p0, v1, :cond_2

    const/16 v1, 0x2000

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isFullScreenNavBarHidden()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/camera/display/Display;->sIsFullScreenNavBarHidden:Z

    return v0
.end method

.method public static isFullScreenNavBarHidden(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Lcom/xiaomi/compat/miui/MiuiSettingsCompat$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInMultiWindowMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/display/Display;->mIsInMultiWindowMode:Z

    return v0
.end method

.method public static isLandscape()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFilmModule()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCloneModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperMoonMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->isScreenOrientationPortrait()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isNormalMuiltDisplayType()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getMuiltDisplayType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isNotchDevice()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoooO()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->isAspectRatio456(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Oo0o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    sget-boolean v0, Lcom/android/camera/display/Display;->isNotchDevice:Z

    return v0
.end method

.method public static isNotchScreenHidden()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/camera/display/Display;->sIsnotchScreenHidden:Z

    return v0
.end method

.method public static isNotchScreenHidden(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black_v2"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isScreenOrientationPortrait()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getScreenOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method public static needAlphaAnimation4PopMore()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->needAlphaAnimation4PopMore()Z

    move-result v0

    return v0
.end method

.method public static reverseDisplayStateWhileUnFold(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E: reverseDisplayStateWhileUnFold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "miui_multi_display"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-interface {v0, p0, v1}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->reverseDisplayStateWhileUnFold(ZI)Z

    .line 5
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v0, "X: reverseDisplayStateWhileUnFold Success!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reverseDisplayStateWhileUnFold fail!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v0, "multi display manager service no found! "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static supportMultiWindow()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOoO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio123(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static switchPresentationDisplay(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isNormalMuiltDisplayType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E: NormalDisplay--switchPresentationDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "power"

    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {v0}, Lcom/android/camera/module/impl/component/IMiuiSubScreenManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiSubScreenManager;

    move-result-object v0

    if-eqz p0, :cond_0

    const p0, 0xfffffa

    goto :goto_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "subscreen_switch"

    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    const p0, 0xfffff8

    goto :goto_0

    :cond_2
    const p0, 0xfffffb

    .line 7
    :goto_0
    sget-object v1, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X: NormalDisplay--SubDisplay isSubscreenOn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_1
    invoke-interface {v0, p0}, Lcom/android/camera/module/impl/component/IMiuiSubScreenManager;->turnOnOrOFFSubDisplay(I)V

    .line 9
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v0, "X: NormalDisplay--SubDisplay turnOnOrOFFSubDisplay sucess!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 10
    :catch_0
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v0, "NormalDisplay--display manager service connect fail!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 11
    :cond_3
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v0, "NormalDisplay--multi display manager service no found! "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    .line 12
    :cond_4
    sget-object v0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E: switchPresentationDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "miui_multi_display"

    .line 13
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14
    invoke-static {v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object v0

    .line 15
    :try_start_1
    sget v1, Lcom/android/camera/display/Display;->SUB_SCREEN_DISPLAY_NUM:I

    invoke-interface {v0, v1, p0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->setDisplayStateIgnoreFold(IZ)Z

    .line 16
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v0, "X: SubDisplay, sub display sucess!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 17
    :catch_1
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v0, "display manager service connect fail!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 18
    :cond_5
    sget-object p0, Lcom/android/camera/display/Display;->TAG:Ljava/lang/String;

    const-string v0, "multi display manager service no found! "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public static updateOrientation(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/display/Display;->getScreenOrientation(I)I

    move-result p0

    sput p0, Lcom/android/camera/display/Display;->sScreenOriention:I

    return-void
.end method
