.class public Lcom/mi/device/Odin;
.super Lcom/mi/device/Common;
.source "Odin.java"


# static fields
.field public static final OooO0OO:[I

.field public static final OooO0Oo:[I

.field public static final OooO0o0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mi/device/Odin;->OooO0OO:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mi/device/Odin;->OooO0Oo:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mi/device/Odin;->OooO0o0:[I

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

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        -0xc
        -0x18
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

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

    const/4 v0, 0x0

    return v0
.end method

.method public OooO00o(II)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3c

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO00o(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/mi/device/Odin;->OooO0OO:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/mi/device/Odin;->OooO0Oo:[I

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

.method public OooOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooOOO()Ljava/lang/String;
    .locals 1

    const-string v0, "notelemfnr:1;telesr:1"

    return-object v0
.end method

.method public OooOOOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooOOo0()Ljava/lang/String;
    .locals 1

    const-string v0, "true:4000x3000"

    return-object v0
.end method

.method public OooOoO()I
    .locals 1

    const/16 v0, 0x172

    return v0
.end method

.method public OooOoO0()I
    .locals 1

    const/16 v0, 0x14a

    return v0
.end method

.method public OooOooo()I
    .locals 1

    const/16 v0, 0xfa0

    return v0
.end method

.method public Oooo()Ljava/lang/String;
    .locals 1

    const-string v0, "20x9"

    return-object v0
.end method

.method public Oooo0()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public Oooo00o()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2"

    return-object v0
.end method

.method public Oooo0O0()I
    .locals 1

    const v0, 0xc96a80

    return v0
.end method

.method public Oooo0OO()Ljava/lang/String;
    .locals 1

    const-string v0, "1.50_2622"

    return-object v0
.end method

.method public Oooo0o()Ljava/lang/String;
    .locals 1

    const-string v0, "v5"

    return-object v0
.end method

.method public OoooO0()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OoooO00()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public OoooO0O()Ljava/lang/String;
    .locals 1

    const-string v0, "0.5:uw:0.5;1:wide:1.0;2:wide:1.0;5:ut:5.0;10:ut:5.0;1:front:1.0"

    return-object v0
.end method

.method public OoooOO0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OoooOOO()Ljava/lang/String;
    .locals 1

    const-string v0, "uinput-fpc,uinput-goodix"

    return-object v0
.end method

.method public OoooOOo()[I
    .locals 1

    sget-object v0, Lcom/mi/device/Odin;->OooO0o0:[I

    return-object v0
.end method

.method public OoooOoo()S
    .locals 1

    sget-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0O0:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {v0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result v0

    return v0
.end method

.method public Ooooo0o()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public OooooOO()Ljava/lang/String;
    .locals 1

    const-string v0, "auto"

    return-object v0
.end method

.method public Oooooo()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public Oooooo0()F
    .locals 1

    const v0, 0x3ba3d70a    # 0.005f

    return v0
.end method

.method public Ooooooo()Ljava/lang/String;
    .locals 1

    const-string v0, "90,60"

    return-object v0
.end method

.method public o000()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00000()S
    .locals 1

    sget-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0o0:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {v0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result v0

    return v0
.end method

.method public o000000()F
    .locals 1

    const v0, 0x3fa66666    # 1.3f

    return v0
.end method

.method public o000000o()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o00000O()Ljava/lang/String;
    .locals 1

    const-string v0, "3:12032x9024"

    return-object v0
.end method

.method public o00000OO()Ljava/lang/String;
    .locals 1

    const-string v0, "1:8000x6000"

    return-object v0
.end method

.method public o00000Oo()Ljava/lang/String;
    .locals 1

    const-string v0, "1:8000x6000"

    return-object v0
.end method

.method public o00000o0()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public o00000oO()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public o0000O()[Ljava/lang/String;
    .locals 2

    const-string v0, "5:20:30:40:50:60"

    const-string v1, "3:10:10:10:10"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0000OOo()Ljava/lang/String;
    .locals 1

    const-string v0, "sat"

    return-object v0
.end method

.method public o0000Oo()Ljava/lang/String;
    .locals 1

    const-string v0, "capture:0.5:1.0:5.0;video:0.5:1.0:5.0;pixel:0.5:1:2;supernight:0.5:1.0:5.0"

    return-object v0
.end method

.method public o0000Oo0()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public o0000OoO()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o0000o()I
    .locals 1

    const/16 v0, 0x1780

    return v0
.end method

.method public o0000o0()Ljava/lang/String;
    .locals 1

    const-string v0, "capture_inner:0.5:1:2:5:10:120;capture_ruler:5:5:10:5:11;video_inner:0.5:1:2:5:10:15;video_ruler:5:10:10:5:10"

    return-object v0
.end method

.method public o0000o0o()I
    .locals 1

    const/16 v0, 0x1780

    return v0
.end method

.method public o0000oOO()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0000ooO()Ljava/lang/String;
    .locals 1

    const-string v0, "3"

    return-object v0
.end method

.method public o000O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000OO0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000OOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000Oo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000Oo00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000Oo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OoO()I
    .locals 1

    const/16 v0, 0x1780

    return v0
.end method

.method public o000Ooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000Oooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000o0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000o0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000oOoo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000oo00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000oo0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000ooOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000ooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000oooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O000o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0O00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0O0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0OOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0Oo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0OoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0Ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0o00()Z
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

.method public o00O0oOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO000()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO00o()Z
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

.method public o00OO0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO0o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO0oo()Z
    .locals 1

    const/4 v0, 0x1

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

.method public o00Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoO0()Z
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

.method public o00OoOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Ooo()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public o00Ooo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OooOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o000O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o000o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o00O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o00Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o00o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o00oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o00oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0O()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public o00o0O0()Z
    .locals 1

    const/4 v0, 0x1

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

.method public o00o0Oo()Z
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

.method public o00o0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0o0O()Z
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

.method public o00o0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0oo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oO0()Z
    .locals 1

    const/4 v0, 0x0

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

.method public o00oO0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oO0o()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public o00oOOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOOOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOOo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOo00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOo0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOoO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOoOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOoOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOoo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0()Z
    .locals 1

    const/4 v0, 0x1

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

.method public o00oo0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo0OO()Z
    .locals 1

    const/4 v0, 0x0

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

.method public o00ooO00()Z
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

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooOo0()Z
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

.method public o00ooo()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x780
        0x438
    .end array-data
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

.method public o00oooOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00()I
    .locals 1

    const/16 v0, 0xa0

    return v0
.end method

.method public o0O000()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00000()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o0O000o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O000oo()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public o0O00O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00O0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00OOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00OoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00Ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00o()Ljava/lang/String;
    .locals 1

    const-string v0, "macro:capture_intent:ultra_wide:pro"

    return-object v0
.end method

.method public o0O00o00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00o0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00oO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0O0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0O0Oo()Z
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

.method public o0O0OO0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OOOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0Oo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0Oo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0Oo0o()Ljava/lang/String;
    .locals 1

    const-string v0, "wide"

    return-object v0
.end method

.method public o0O0OoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0OoO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0Ooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0Oooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0o000()Ljava/lang/String;
    .locals 1

    const-string v0, "ultra_wide:tele"

    return-object v0
.end method

.method public o0O0o00O()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o0O0o00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0o0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oO0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oO0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oOOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oOoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oOoo()Z
    .locals 1

    const/4 v0, 0x1

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

.method public o0O0oo00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0ooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0ooO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0ooo()Z
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

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0oooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0OO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO000o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO00OO()Z
    .locals 1

    const/4 v0, 0x0

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

.method public o0OO0O0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OOO0o()F
    .locals 1

    const v0, 0x3f6f6e7f

    return v0
.end method

.method public o0Oo0oo()I
    .locals 1

    const/16 v0, 0x13b

    return v0
.end method

.method public o0OoO00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OoOoOO()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public o0o0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0oO0O0o()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public o0oO0Ooo()Z
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

.method public o0ooOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public oo000o()F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    return v0
.end method

.method public oo00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oo0OOoo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public oo0o0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public oo0o0Oo()I
    .locals 1

    const v0, 0x1312d00

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

.method public oo0ooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oooOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
