.class public Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;
.super Lcom/android/camera/data/data/ComponentMultiple;
.source "ComponentSettingMultipleAdvance.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/android/camera/data/data/DataItemBase;",
            ">(TD;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentMultiple;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f12025a

    return v0
.end method

.method public initTypeElements(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;->getDisplayTitleString()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOO0()Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 3
    new-instance p4, Lcom/android/camera/data/data/TypeItem;

    const v2, 0x7f1207fa

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v4, "pref_fingerprint_capture_key"

    invoke-direct {p4, v2, p3, v4, v3}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-array v2, v1, [Lcom/android/camera/data/data/TypeItem;

    aput-object p4, v2, v0

    .line 4
    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/ComponentMultiple;->insert([Lcom/android/camera/data/data/TypeItem;)V

    :cond_0
    const/4 p4, 0x0

    const/16 v2, 0xa2

    if-eq p2, v2, :cond_1

    const/16 v2, 0xb7

    if-eq p2, v2, :cond_1

    .line 5
    new-instance p4, Lcom/android/camera/data/data/TypeItem;

    const p2, 0x7f1207ca

    const v2, 0x7f1207c3

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "pref_camera_volumekey_function_key"

    invoke-direct {p4, p2, p3, v2, p1}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f030037

    .line 7
    invoke-virtual {p4, p1}, Lcom/android/camera/data/data/TypeItem;->setEntryArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    move-result-object p1

    const p2, 0x7f030038

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/TypeItem;->setValueArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    :cond_1
    new-array p1, v1, [Lcom/android/camera/data/data/TypeItem;

    aput-object p4, p1, v0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentMultiple;->insert([Lcom/android/camera/data/data/TypeItem;)V

    return-void
.end method
