.class public Lcom/mi/device/Vili;
.super Lcom/mi/device/Common;
.source "Vili.java"


# static fields
.field public static final OooO0OO:[I

.field public static final OooO0Oo:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/mi/device/Vili;->OooO0OO:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/mi/device/Vili;->OooO0Oo:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x24
        -0x18
        -0x9
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1b
        -0xc
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mi/device/Common;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooO00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooO00o(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/mi/device/Vili;->OooO0OO:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/mi/device/Vili;->OooO0Oo:[I

    :goto_0
    return-object p1
.end method

.method public OooO0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public OooO0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooO0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooOOo0()Ljava/lang/String;
    .locals 1

    const-string v0, "mfnr:1"

    return-object v0
.end method

.method public OooOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooOo00()Ljava/lang/String;
    .locals 1

    const-string v0, "true:4000x3000"

    return-object v0
.end method

.method public OooOoo()I
    .locals 1

    const/16 v0, 0x190

    return v0
.end method

.method public OooOoo0()I
    .locals 1

    const/16 v0, 0x168

    return v0
.end method

.method public Oooo()Ljava/lang/String;
    .locals 1

    const-string v0, "v2"

    return-object v0
.end method

.method public Oooo00o()I
    .locals 1

    const/16 v0, 0xfa0

    return v0
.end method

.method public Oooo0OO()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2"

    return-object v0
.end method

.method public Oooo0o()I
    .locals 1

    const v0, 0xc96a80

    return v0
.end method

.method public Oooo0o0()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public Oooo0oO()Ljava/lang/String;
    .locals 1

    const-string v0, "1.50_2622"

    return-object v0
.end method

.method public OoooO00()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        -0x6
        0x6
    .end array-data
.end method

.method public OoooOO0()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OoooOo0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooooO0()Ljava/lang/String;
    .locals 1

    const-string v0, "uinput-fpc,uinput-goodix"

    return-object v0
.end method

.method public Oooooo()S
    .locals 1

    .line 1
    sget-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0OO:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {v0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result v0

    return v0
.end method

.method public o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000()Ljava/lang/String;
    .locals 1

    const-string v0, "capture_inner:0.6:1:2:5:10;capture_ruler:4:10:10:5"

    return-object v0
.end method

.method public o000000O()F
    .locals 1

    const v0, 0x3f6f6e7f

    return v0
.end method

.method public o000000o()I
    .locals 1

    const/16 v0, 0x13b

    return v0
.end method

.method public o00000O0()I
    .locals 1

    const v0, 0x1312d00

    return v0
.end method

.method public o00000oO()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o00000oo()S
    .locals 1

    .line 1
    sget-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0o:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {v0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result v0

    return v0
.end method

.method public o0000O0()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public o0000O00()Ljava/lang/String;
    .locals 1

    const-string v0, "3:12000x9000"

    return-object v0
.end method

.method public o0000oOO()Ljava/lang/String;
    .locals 1

    const-string v0, "wide:ultra_wide:sat"

    return-object v0
.end method

.method public o0000oOo()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public o0000oo0()Ljava/lang/String;
    .locals 1

    const-string v0, "capture:0.6:1.0:2.0"

    return-object v0
.end method

.method public o0000ooO()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o000O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O0O()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O0o()I
    .locals 1

    const/16 v0, 0x1780

    return v0
.end method

.method public o000O0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000OO()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public o000OO0O()I
    .locals 1

    const/16 v0, 0x1780

    return v0
.end method

.method public o000OOoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000Oo00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000Oo0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000OoOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000o000()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000o0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000oOoO()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public o000oOoo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000oo00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000ooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000ooOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000oooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000oooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0O0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0Oo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0o0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0o0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0oOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0oo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO0OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO0oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OOO00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OOO0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OOOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OOoo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OOooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OOooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo0()F
    .locals 1

    const v0, 0x3ba3d70a    # 0.005f

    return v0
.end method

.method public o00Oo0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo0o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoO0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOoo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Ooo()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o00Ooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Ooo00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Ooo0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Ooo0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OooO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OooOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Ooooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o000()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o00oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0O0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0OO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0Oo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0OoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0o0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0oOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0oOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oO00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oO00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOOoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOo00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOo0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOoOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOoo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo000()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooO0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooO0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooOoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooOoo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooo()Ljava/lang/String;
    .locals 1

    const-string v0, "120,60"

    return-object v0
.end method

.method public o00ooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooo00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooo0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooo0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o0O000()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0000o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O000O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O000Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00O0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00OOO()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public o0O00Ooo()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public o0O00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00o00()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public o0O00o0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00o0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00oO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0O0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0O0o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0O0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0O0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0OO0O()Ljava/lang/String;
    .locals 1

    const-string v0, "macro:capture_intent:ultra_wide:pro"

    return-object v0
.end method

.method public o0O0OOO()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public o0O0OOoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0Oo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0OoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0OoOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0o00o()Ljava/lang/String;
    .locals 1

    const-string v0, "wide"

    return-object v0
.end method

.method public o0O0o0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0o0OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0o0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0o0o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oO0O()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o0O0oO0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oOo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0ooO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0ooOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0ooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO000()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO00O()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public o0OO00OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO00Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO00o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO00oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0O0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0OoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0o00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0o0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0OO0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0oO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0oOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0ooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OOO0o()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x780
        0x438
    .end array-data
.end method

.method public o0Oo0oo()F
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    return v0
.end method

.method public o0OoO0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0oO0Ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0oOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0oOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0oOo0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0ooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0ooOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0ooOOo()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public oOooo0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public oo00o()Ljava/lang/String;
    .locals 1

    const-string v0, "24FPS"

    return-object v0
.end method

.method public oo0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public oo0o0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oo0oO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public oo0oOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public oo0oOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ooOO()Ljava/lang/String;
    .locals 1

    const-string v0, "auto"

    return-object v0
.end method

.method public oooOO0()Ljava/lang/String;
    .locals 1

    const-string v0, "ultra_wide:front:macro"

    return-object v0
.end method
