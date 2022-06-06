.class public LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;
.super Ljava/lang/Object;
.source "LinearMotorStrategy.java"

# interfaces
.implements LOooO0O0/OooO0O0/OooO0Oo/OooO0O0;


# static fields
.field public static final OooO0O0:Ljava/lang/String; = "LinearMotorStrategy"

.field public static final OooO0OO:I = 0x0

.field public static final OooO0Oo:F = 0.3f


# instance fields
.field public final OooO00o:Lmiuix/util/HapticFeedbackCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-direct {v0, p1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    return-void
.end method


# virtual methods
.method public OooO()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performBurstCapture: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IIZ)Z

    return-void
.end method

.method public OooO00o()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performFocusValueLargeChangedInManual: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IIZ)Z

    return-void
.end method

.method public OooO0O0()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performModeSwitch: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IZ)Z

    return-void
.end method

.method public OooO0OO()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performSlideScaleNormal: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IIZ)Z

    return-void
.end method

.method public OooO0Oo()V
    .locals 2

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performEVChange: ignore..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OooO0o()V
    .locals 5

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performSnapClick: SNAP_CLICK_STRENGTH > 0.3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    const-string v4, "USAGE_PHYSICAL_EMULATION"

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IDLjava/lang/String;)Z

    return-void
.end method

.method public OooO0o0()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performBokehAdjust: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IIZ)Z

    return-void
.end method

.method public OooO0oO()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performFocusValueLightChangedInManual: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IIZ)Z

    return-void
.end method

.method public OooO0oo()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performSelectZoomLight: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IIZ)Z

    return-void
.end method

.method public OooOO0()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performSelectZoomNormal: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IIZ)Z

    return-void
.end method

.method public OooOO0O()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string/jumbo v1, "performSwitchCamera: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0Oo/OooO0OO;->OooO00o:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IIZ)Z

    return-void
.end method
