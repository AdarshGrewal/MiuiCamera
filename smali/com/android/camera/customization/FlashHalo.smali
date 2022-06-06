.class public Lcom/android/camera/customization/FlashHalo;
.super Ljava/lang/Object;
.source "FlashHalo.java"


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

    new-instance v0, Lcom/android/camera/customization/FlashHalo;

    invoke-direct {v0}, Lcom/android/camera/customization/FlashHalo;-><init>()V

    sput-object v0, Lcom/android/camera/customization/FlashHalo;->INSTANCE:Lcom/android/camera/customization/FlashHalo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    iput-boolean v0, p0, Lcom/android/camera/customization/FlashHalo;->mHaloEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    return-void
.end method

.method public static getInstance()Lcom/android/camera/customization/FlashHalo;
    .locals 1

    sget-object v0, Lcom/android/camera/customization/FlashHalo;->INSTANCE:Lcom/android/camera/customization/FlashHalo;

    return-object v0
.end method


# virtual methods
.method public getHaloEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/customization/FlashHalo;->mHaloEnabled:Z

    return v0
.end method

.method public getHaloVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    return v0
.end method

.method public reConfigScreenHaloRequest(IZZZ)V
    .locals 1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->oOooo0o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/customization/ThemeModeManager;->requestChangeTheme(IZZZ)V

    :cond_0
    return-void
.end method

.method public reConfigScreenHaloRequest(IZZ)Z
    .locals 8

    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/ThemeModeManager;->getCurrentThemeMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->supportFlash()Z

    move-result v5

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isDisabled(I)Z

    move-result v6

    const/16 v7, 0xac

    if-ne v3, v1, :cond_6

    if-eqz v5, :cond_6

    if-nez v6, :cond_6

    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa9

    if-eq p1, v5, :cond_6

    if-eq p1, v7, :cond_6

    const/16 v5, 0xb0

    if-eq p1, v5, :cond_6

    const/16 v5, 0xfe

    if-eq p1, v5, :cond_6

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "104"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    if-nez p3, :cond_4

    if-eqz v0, :cond_2

    const-string p3, "105"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    if-nez p2, :cond_4

    :cond_2
    iget p2, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    move p2, v2

    goto :goto_2

    :cond_4
    :goto_1
    move p2, v1

    :goto_2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    move p1, p2

    goto :goto_3

    :cond_6
    move p1, v2

    move p2, p1

    :goto_3
    if-eqz p2, :cond_7

    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/customization/ThemeModeManager;->getCurrentThemeMode()I

    move-result p3

    if-ne p3, v1, :cond_8

    :cond_7
    if-nez p2, :cond_9

    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/customization/ThemeModeManager;->getCurrentThemeMode()I

    move-result p3

    if-ne p3, v1, :cond_9

    :cond_8
    move p3, v1

    goto :goto_4

    :cond_9
    move p3, v2

    :goto_4
    if-eqz p3, :cond_d

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v0

    if-eqz v0, :cond_a

    iput p2, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    return v2

    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iput p2, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    return v2

    :cond_b
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/customization/FlashHalo;->mPendingMode:I

    if-eqz p2, :cond_c

    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/camera/customization/ThemeModeManager;->setThemeMode(I)V

    iput-boolean v1, p0, Lcom/android/camera/customization/FlashHalo;->mHaloEnabled:Z

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/camera/customization/ThemeModeManager;->setThemeMode(I)V

    iput-boolean v2, p0, Lcom/android/camera/customization/FlashHalo;->mHaloEnabled:Z

    :goto_5
    iput-boolean p1, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reConfigScreenHalo:    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " halo state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FlashHalo"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    if-eq p2, p1, :cond_e

    iput-boolean p1, p0, Lcom/android/camera/customization/FlashHalo;->mShowHalo:Z

    return v1

    :cond_e
    return p3
.end method
