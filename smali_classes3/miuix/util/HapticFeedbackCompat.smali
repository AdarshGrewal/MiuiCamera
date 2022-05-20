.class public Lmiuix/util/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"


# static fields
.field public static final PHYSICAL_EMULATION_REASON:Ljava/lang/String; = "USAGE_PHYSICAL_EMULATION"

.field public static final RTP_MIN_VALUE:I = 0x0

.field public static final RTP_V1_MAX_VALUE:I = 0xa0

.field public static final TAG:Ljava/lang/String; = "HapticFeedbackCompat"

.field public static mAvailable:Z

.field public static mCanCheckExtHaptic:Z

.field public static mCanStop:Z

.field public static mExtHapticAlways:Z

.field public static mIsSupportHapticWithReason:Z


# instance fields
.field public hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "HapticFeedbackCompat"

    .line 1
    sget v1, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v3

    sput-boolean v3, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "MIUI Haptic Implementation is not available"

    .line 3
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    .line 5
    :goto_0
    sget-boolean v3, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    .line 6
    :try_start_1
    const-class v4, Lmiui/util/HapticFeedbackUtil;

    const-string v5, "performHapticFeedback"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    sput-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    const-string v5, "Not support haptic with reason"

    .line 8
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    .line 10
    :goto_1
    :try_start_2
    const-class v0, Lmiui/util/HapticFeedbackUtil;

    const-string v4, "isSupportExtHapticFeedback"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    sput-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 12
    :catchall_2
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    .line 13
    :goto_2
    :try_start_3
    const-class v0, Lmiui/util/HapticFeedbackUtil;

    const-string v4, "performExtHapticFeedback"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v2

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    sput-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    .line 15
    :catchall_3
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    .line 16
    :goto_3
    :try_start_4
    const-class v0, Lmiui/util/HapticFeedbackUtil;

    const-string v3, "stop"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    sput-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    .line 18
    :catchall_4
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z

    :cond_0
    :goto_4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v1, "HapticFeedbackCompat"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const-string p1, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-nez v0, :cond_1

    const-string p1, "linear motor is not supported in this platform."

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method


# virtual methods
.method public isSupportExtHapticFeedback(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public performEmulationHaptic(ID)Z
    .locals 1

    const-string v0, "USAGE_PHYSICAL_EMULATION"

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IDLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public performExtHapticFeedback(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedback(IZ)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    .line 4
    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IZ)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-object p2, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p2, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedback(Landroid/net/Uri;)Z
    .locals 1

    .line 11
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedback(Landroid/net/Uri;Z)Z
    .locals 2

    .line 7
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    .line 8
    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 9
    invoke-virtual {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;Z)Z

    move-result p1

    return p1

    .line 10
    :cond_0
    iget-object p2, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p2, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public performHapticFeedback(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IZ)Z

    move-result p1

    return p1
.end method

.method public performHapticFeedback(IDLjava/lang/String;)Z
    .locals 1

    .line 11
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 13
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IDLjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public performHapticFeedback(II)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1, v1, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public performHapticFeedback(IIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1, p3, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public performHapticFeedback(IZ)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 9
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->release()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->stop()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public supportKeyboardIntensity()Z
    .locals 2

    const-string v0, "sys.haptic.intensityforkeyboard"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public supportLinearMotor()Z
    .locals 1

    .line 1
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    return v0
.end method

.method public supportLinearMotorWithReason()Z
    .locals 1

    .line 1
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    return v0
.end method
