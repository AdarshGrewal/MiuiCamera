.class public Lcom/xiaomi/camera/videocast/VideoCastTileService;
.super Landroid/service/quicksettings/TileService;
.source "VideoCastTileService.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sListeningInstance:Lcom/xiaomi/camera/videocast/VideoCastTileService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/videocast/VideoCastTileService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->showDiagnoseActivity()V

    return-void
.end method

.method private showDiagnoseActivity()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lcom/xiaomi/camera/videocast/DiagnoseActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "ShowCameraWhenLocked"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "StartActivityWhenLocked"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    return-void
.end method

.method private showDiagnoseDialog()V
    .locals 3

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130005

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1209bf

    .line 2
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Ooo()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1205b1

    goto :goto_0

    :cond_0
    const v1, 0x7f1205b0

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120347

    .line 4
    new-instance v2, Lcom/xiaomi/camera/videocast/VideoCastTileService$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService$2;-><init>(Lcom/xiaomi/camera/videocast/VideoCastTileService;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 5
    new-instance v1, Lcom/xiaomi/camera/videocast/VideoCastTileService$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService$3;-><init>(Lcom/xiaomi/camera/videocast/VideoCastTileService;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 8
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7f6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private update()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "update: tile is not available"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/videocast/VideoCastService;->isServiceRunning(Landroid/content/Context;)Z

    move-result v1

    .line 4
    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: isRunning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1209bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f0803a2

    .line 7
    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 9
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public static updateTile()V
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->sListeningInstance:Lcom/xiaomi/camera/videocast/VideoCastTileService;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {v0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->update()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: isSecure() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->isSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: isLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick: video cast not supported"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/videocast/VideoCastService;->getServiceState(Landroid/content/Context;)Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STARTING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick: click is disallowed while service is starting"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STOPPING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    if-ne v0, v1, :cond_2

    .line 10
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick: click is disallowed while service is stopping"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->ADVERTISING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 12
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick: switch off"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, v2}, Lcom/xiaomi/camera/videocast/VideoCastService;->stopAdvertising(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    .line 14
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkDiagnostics;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/xiaomi/camera/rcs/network/NetworkDiagnostics;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick: switch on"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, v2}, Lcom/xiaomi/camera/videocast/VideoCastService;->startAdvertising(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    .line 17
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->isLocked()Z

    move-result v0

    const-string v1, "onClick: showDiagnoseDialog"

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick: showDiagnoseActivity"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->showDiagnoseActivity()V

    goto :goto_1

    .line 21
    :cond_6
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/xiaomi/camera/videocast/VideoCastTileService$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService$1;-><init>(Lcom/xiaomi/camera/videocast/VideoCastTileService;)V

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 23
    :cond_7
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->showDiagnoseActivity()V

    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onStartListening"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sput-object p0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->sListeningInstance:Lcom/xiaomi/camera/videocast/VideoCastTileService;

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->update()V

    return-void
.end method

.method public onStopListening()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onStopListening"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->sListeningInstance:Lcom/xiaomi/camera/videocast/VideoCastTileService;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->sListeningInstance:Lcom/xiaomi/camera/videocast/VideoCastTileService;

    :cond_0
    return-void
.end method

.method public onTileAdded()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onTileAdded"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->update()V

    return-void
.end method

.method public onTileRemoved()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onTileRemoved"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
