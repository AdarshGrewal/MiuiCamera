.class public Lcom/android/camera/customization/FlashHalo;
.super Ljava/lang/Object;
.source "FlashHalo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/camera/customization/FlashHalo;

.field public static final TAG:Ljava/lang/String; = "FlashHalo"


# instance fields
.field public mHaloEnabled:Z

.field public mPendingMode:I

.field public mShowHalo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/customization/FlashHalo;

    invoke-direct {v0}, Lcom/android/camera/customization/FlashHalo;-><init>()V

    sput-object v0, Lcom/android/camera/customization/FlashHalo;->INSTANCE:Lcom/android/camera/customization/FlashHalo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/customization/FlashHalo;->mHaloEnabled:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    return-void
.end method

.method public static getInstance()Lcom/android/camera/customization/FlashHalo;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/customization/FlashHalo;->INSTANCE:Lcom/android/camera/customization/FlashHalo;

    return-object v0
.end method


# virtual methods
.method public getHaloEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/customization/FlashHalo;->mHaloEnabled:Z

    return v0
.end method

.method public getHaloVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    return v0
.end method

.method public reConfigScreenHaloRequest(IZZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZZ)V

    return-void
.end method

.method public reConfigScreenHaloRequest(IZZZZ)V
    .locals 1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;

    invoke-direct {v0}, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;-><init>()V

    .line 4
    iput p1, v0, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->mode:I

    .line 5
    iput-boolean p2, v0, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->fromConfig:Z

    .line 6
    iput-boolean p3, v0, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->forceOn:Z

    .line 7
    iput-boolean p4, v0, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->reInit:Z

    .line 8
    iput-boolean p5, v0, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->forceOff:Z

    .line 9
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/ThemeModeManager;->requestChangeTheme(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)V

    :cond_0
    return-void
.end method

.method public reConfigScreenHaloRequest(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)Z
    .locals 7

    .line 10
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/ThemeModeManager;->getCurrentThemeMode()I

    move-result v0

    const/4 v1, 0x1

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportFlash()Z

    move-result v3

    .line 14
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v2

    .line 15
    iget v4, p1, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->mode:I

    invoke-virtual {v2, v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isDisabled(I)Z

    move-result v4

    const/16 v5, 0xac

    const/4 v6, 0x0

    if-ne v0, v1, :cond_5

    if-eqz v3, :cond_5

    if-nez v4, :cond_5

    .line 16
    iget-boolean v0, p1, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->forceOff:Z

    if-nez v0, :cond_5

    .line 17
    iget v0, p1, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->mode:I

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget v3, p1, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->mode:I

    const/16 v4, 0xa9

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_5

    const/16 v4, 0xb0

    if-eq v3, v4, :cond_5

    const/16 v4, 0xfe

    if-eq v3, v4, :cond_5

    .line 19
    invoke-virtual {v2}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "104"

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 21
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo00()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "2"

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-boolean v0, p1, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->forceOn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    if-nez v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 23
    :goto_1
    iget p1, p1, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;->mode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v6

    goto :goto_2

    :cond_4
    move p1, v0

    goto :goto_2

    :cond_5
    move p1, v6

    move v0, p1

    :goto_2
    if-eqz v0, :cond_6

    .line 24
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/customization/ThemeModeManager;->getCurrentThemeMode()I

    move-result v2

    if-ne v2, v1, :cond_7

    :cond_6
    if-nez v0, :cond_8

    .line 25
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/customization/ThemeModeManager;->getCurrentThemeMode()I

    move-result v2

    if-ne v2, v1, :cond_8

    :cond_7
    move v2, v1

    goto :goto_3

    :cond_8
    move v2, v6

    :goto_3
    if-eqz v2, :cond_c

    .line 26
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 28
    iput v0, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    return v6

    .line 29
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v3, :cond_a

    .line 30
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 31
    iput v0, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    return v6

    :cond_a
    const/4 v3, -0x1

    .line 32
    iput v3, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    if-eqz v0, :cond_b

    .line 33
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeModeManager;->setThemeMode(I)V

    .line 34
    iput-boolean v1, p0, Lcom/android/camera/customization/FlashHalo;->mHaloEnabled:Z

    goto :goto_4

    .line 35
    :cond_b
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/customization/ThemeModeManager;->setThemeMode(I)V

    .line 36
    iput-boolean v6, p0, Lcom/android/camera/customization/FlashHalo;->mHaloEnabled:Z

    .line 37
    :goto_4
    iput-boolean p1, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    .line 38
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reConfigScreenHalo:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " > current halo state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FlashHalo"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-boolean v0, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    if-eq v0, p1, :cond_d

    .line 40
    iput-boolean p1, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    return v1

    :cond_d
    return v2
.end method
