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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/android/camera/bluetooth/BluetoothSco;

    invoke-direct {v0, p1}, Lcom/android/camera/bluetooth/BluetoothSco;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mBluetoothSco:Lcom/android/camera/bluetooth/IBluetoothSco;

    return-void
.end method


# virtual methods
.method public isBluetoothScoOn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mBluetoothSco:Lcom/android/camera/bluetooth/IBluetoothSco;

    invoke-interface {v0}, Lcom/android/camera/bluetooth/IBluetoothSco;->isBluetootScoOn()Z

    move-result v0

    return v0
.end method

.method public startBluetoothSco(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->supportBluetoothSco(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mBluetoothSco:Lcom/android/camera/bluetooth/IBluetoothSco;

    invoke-interface {p1}, Lcom/android/camera/bluetooth/IBluetoothSco;->startBluetoothSco()V

    return-void
.end method

.method public stopBluetoothSco(I)V
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string/jumbo v0, "support_bluetooth_mic"

    .line 2
    invoke-static {v0, p1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/bluetooth/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "(stopBluetoothSco)not supported bluetooth headset mic!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mBluetoothSco:Lcom/android/camera/bluetooth/IBluetoothSco;

    invoke-interface {p1}, Lcom/android/camera/bluetooth/IBluetoothSco;->stopBluetoothSco()V

    return-void
.end method

.method public supportBluetoothSco(I)Z
    .locals 5

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "support_bluetooth_mic"

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/bluetooth/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "not supported bluetooth headset mic!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
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

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothScoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x1

    const-string v3, "miui_bluetooth_sco_state"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6
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

    .line 7
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 9
    sget-object p1, Lcom/android/camera/bluetooth/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "bluetooth headset no connect:"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/16 v0, 0xa2

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_4

    return v1

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v2

    .line 12
    :cond_6
    :goto_0
    sget-object p1, Lcom/android/camera/bluetooth/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "mimoji photo not support bluetoothSco"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    return v2
.end method
