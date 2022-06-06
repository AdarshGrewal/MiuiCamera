.class public Lcom/android/camera/bluetooth/BluetoothScoManager;
.super Ljava/lang/Object;
.source "BluetoothScoManager.java"


# static fields
.field public static final SCO_OFF:I = 0x0

.field public static final SCO_ON:I = 0x1

.field public static final SETTING_BLUETOOTH_SCO_STATE:Ljava/lang/String; = "miui_bluetooth_sco_state"

.field public static final TAG:Ljava/lang/String; = "BluetoothScoManager"


# instance fields
.field public mBluetoothSco:Lcom/android/camera/bluetooth/IBluetoothSco;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/camera/bluetooth/BluetoothSco;

    invoke-direct {v0, p1}, Lcom/android/camera/bluetooth/BluetoothSco;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mBluetoothSco:Lcom/android/camera/bluetooth/IBluetoothSco;

    return-void
.end method


# virtual methods
.method public isBluetoothScoOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mBluetoothSco:Lcom/android/camera/bluetooth/IBluetoothSco;

    invoke-interface {v0}, Lcom/android/camera/bluetooth/IBluetoothSco;->isBluetootScoOn()Z

    move-result v0

    return v0
.end method

.method public startBluetoothSco(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->supportBluetoothSco(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mBluetoothSco:Lcom/android/camera/bluetooth/IBluetoothSco;

    invoke-interface {p1}, Lcom/android/camera/bluetooth/IBluetoothSco;->startBluetoothSco()V

    return-void
.end method

.method public stopBluetoothSco(I)V
    .locals 1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00O0oO()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string/jumbo v0, "support_bluetooth_mic"

    invoke-static {v0, p1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/camera/bluetooth/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "(stopBluetoothSco)not supported bluetooth headset mic!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mBluetoothSco:Lcom/android/camera/bluetooth/IBluetoothSco;

    invoke-interface {p1}, Lcom/android/camera/bluetooth/IBluetoothSco;->stopBluetoothSco()V

    return-void
.end method

.method public supportBluetoothSco(I)Z
    .locals 5

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00O0oO()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "support_bluetooth_mic"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/camera/bluetooth/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "not supported bluetooth headset mic!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v2, 0x7f05001a

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v2

    const-string/jumbo v3, "pref_earphone_key"

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x1

    const-string v3, "miui_bluetooth_sco_state"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/android/camera/bluetooth/BluetoothScoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "system bluetooth sco state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    sget-object p1, Lcom/android/camera/bluetooth/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "bluetooth headset no connect:"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/16 v0, 0xa2

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_7

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_7

    const/16 v0, 0xd7

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_4

    return v1

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/android/camera/bluetooth/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "mimoji photo not support bluetoothSco"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    return v2

    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/android/camera/bluetooth/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "MiLive video music not support bluetoothSco"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    return v2
.end method
