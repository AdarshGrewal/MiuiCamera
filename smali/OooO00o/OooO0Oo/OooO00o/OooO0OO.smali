.class public LOooO00o/OooO0Oo/OooO00o/OooO0OO;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final OooO:Z

.field public static final OooO00o:Ljava/lang/String;

.field public static final OooO0O0:Z

.field public static final OooO0OO:Z

.field public static final OooO0Oo:Z

.field public static final OooO0o:Z

.field public static final OooO0o0:Ljava/lang/String; = "\\d+.\\d+.\\d+(-internal)?"

.field public static final OooO0oO:Z

.field public static final OooO0oo:Z

.field public static final OooOO0:Z

.field public static final OooOO0O:Ljava/lang/String; = "qcom"

.field public static final OooOO0o:Ljava/lang/String; = "mediatek"

.field public static final OooOOO:Ljava/lang/String;

.field public static final OooOOO0:Ljava/lang/String;

.field public static final OooOOOO:Z

.field public static final OooOOOo:Z

.field public static final OooOOo:Z

.field public static final OooOOo0:Z

.field public static final OooOOoo:Z

.field public static final OooOo:Z

.field public static final OooOo0:Z

.field public static final OooOo00:Z

.field public static final OooOo0O:Z

.field public static final OooOo0o:Z

.field public static final OooOoO:Z

.field public static final OooOoO0:Z

.field public static final OooOoOO:Z

.field public static final OooOoo:Z

.field public static final OooOoo0:Z

.field public static final OooOooO:Z

.field public static final OooOooo:Z

.field public static final Oooo:Z

.field public static final Oooo0:Z

.field public static final Oooo000:Z

.field public static final Oooo00O:Z

.field public static final Oooo00o:Z

.field public static final Oooo0O0:Z

.field public static final Oooo0OO:Z

.field public static final Oooo0o:Z

.field public static final Oooo0o0:Z

.field public static final Oooo0oO:Z

.field public static final Oooo0oo:Z

.field public static final OoooO:Z

.field public static final OoooO0:Z

.field public static final OoooO00:Z

.field public static final OoooO0O:Z

.field public static final OoooOO0:Z

.field public static final OoooOOO:Z

.field public static final OoooOOo:Z

.field public static final OoooOo0:Z

.field public static final OoooOoO:Z

.field public static final OoooOoo:Z

.field public static final Ooooo00:Z

.field public static final Ooooo0o:Z

.field public static final OooooO0:Z

.field public static final OooooOO:Z

.field public static final OooooOo:Z

.field public static final Oooooo:Z

.field public static final Oooooo0:Z

.field public static final OoooooO:Z

.field public static final Ooooooo:Z

.field public static final o00000:Z

.field public static final o000000:Z

.field public static final o000000O:Z

.field public static final o000000o:Z

.field public static final o00000O:I = 0x4

.field public static final o00000O0:I = 0x1

.field public static final o00000OO:I = 0x8

.field public static o00000Oo:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final o00000o0:[Ljava/lang/String;

.field public static final o0000Ooo:Ljava/lang/String; = "ro.boot.hwversion"

.field public static final o000OOo:Z

.field public static final o000oOoO:Z

.field public static final o00O0O:Z

.field public static final o00Oo0:Z

.field public static final o00Ooo:Z

.field public static final o00o0O:Z

.field public static final o00oO0O:Z

.field public static final o00oO0o:Z

.field public static final o00ooo:Z

.field public static final o0O0O00:Z

.field public static final o0OO00O:Z

.field public static final o0OOO0o:Z

.field public static final o0Oo0oo:Z

.field public static final o0OoOo0:Z

.field public static final o0ooOO0:Z

.field public static final o0ooOOo:Z

.field public static final o0ooOoO:Z

.field public static final oo000o:Z

.field public static final oo0o0Oo:Z

.field public static final ooOO:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.debuggable"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0O0:Z

    const-string v1, ""

    const-string/jumbo v3, "ro.product.mod_device"

    .line 3
    invoke-static {v3, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_global"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    const-string/jumbo v4, "ro.build.characteristics"

    .line 4
    invoke-static {v4}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tablet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0Oo:Z

    .line 5
    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v5, "\\d+.\\d+.\\d+(-internal)?"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    sput-boolean v4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0o:Z

    .line 7
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v5, "user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0o:Z

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    sput-boolean v4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0oO:Z

    const-string/jumbo v4, "ro.cust.test"

    .line 8
    invoke-static {v4}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0oo:Z

    const-string/jumbo v4, "ro.carrier.name"

    .line 9
    invoke-static {v4}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "ro.miui.cust_variant"

    .line 10
    invoke-static {v4}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cn_chinamobile"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 11
    invoke-static {v4}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cn_cta"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v0

    :goto_3
    sput-boolean v4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO:Z

    .line 12
    invoke-static {v3, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "_alpha"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOO0:Z

    .line 13
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOO0:Ljava/lang/String;

    const-string/jumbo v3, "ro.product.marketname"

    .line 14
    invoke-static {v3, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOO:Ljava/lang/String;

    .line 15
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "beryllium"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOOO:Z

    .line 16
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "lavender"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOOo:Z

    .line 17
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "violet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOo0:Z

    .line 18
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "polaris"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOo:Z

    .line 19
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "sirius"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOoo:Z

    .line 20
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "dipper"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo00:Z

    .line 21
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "andromeda"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0:Z

    .line 22
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "perseus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0O:Z

    .line 23
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "cepheus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0o:Z

    .line 24
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "davinci"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo:Z

    .line 25
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "raphael"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoO0:Z

    .line 26
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "grus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoO:Z

    .line 27
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "begonia"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoOO:Z

    .line 28
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "phoenix"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "phoenixin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v0

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v2

    :goto_5
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoo0:Z

    .line 29
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "begoniain"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoo:Z

    .line 30
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "ginkgo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooO:Z

    .line 31
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "pyxis"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo:Z

    .line 32
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "vela"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo000:Z

    .line 33
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "laurus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo00O:Z

    .line 34
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "laurel_sprout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo00o:Z

    .line 35
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "tucana"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0:Z

    .line 36
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "umi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0O0:Z

    .line 37
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "cmi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0OO:Z

    .line 38
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "cas"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0o0:Z

    .line 39
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "thyme"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0o:Z

    .line 40
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "apollo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "apolloin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v1, v0

    goto :goto_7

    :cond_8
    :goto_6
    move v1, v2

    :goto_7
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0oO:Z

    .line 41
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "atom"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "apricot"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move v1, v0

    goto :goto_9

    :cond_a
    :goto_8
    move v1, v2

    :goto_9
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0oo:Z

    .line 42
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "bomb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "banana"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    move v1, v0

    goto :goto_b

    :cond_c
    :goto_a
    move v1, v2

    :goto_b
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo:Z

    .line 43
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "lmi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "lmiin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_c

    :cond_d
    move v1, v0

    goto :goto_d

    :cond_e
    :goto_c
    move v1, v2

    :goto_d
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO00:Z

    .line 44
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "lmipro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "lmiinpro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_e

    :cond_f
    move v1, v0

    goto :goto_f

    :cond_10
    :goto_e
    move v1, v2

    :goto_f
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO0:Z

    .line 45
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "draco"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO0O:Z

    .line 46
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "picasso"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v4, "picassoin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_10

    :cond_11
    move v1, v0

    goto :goto_11

    :cond_12
    :goto_10
    move v1, v2

    :goto_11
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO:Z

    .line 47
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v4, "monet"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v4, "monetin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_12

    :cond_13
    move v1, v0

    goto :goto_13

    :cond_14
    :goto_12
    move v1, v2

    :goto_13
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOO0:Z

    .line 48
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v4, "vangogh"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000oOoO:Z

    .line 49
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOO:Z

    .line 50
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "gauguin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "gauguinpro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "gauguininpro"

    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_14

    :cond_15
    move v1, v0

    goto :goto_15

    :cond_16
    :goto_14
    move v1, v2

    :goto_15
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo:Z

    .line 52
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "cezanne"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOo0:Z

    .line 53
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "crux"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOoO:Z

    .line 54
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "curtana"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "durandal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "excalibur"

    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "joyeuse"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "gram"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_16

    :cond_17
    move v1, v0

    goto :goto_17

    :cond_18
    :goto_16
    move v1, v2

    :goto_17
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOoo:Z

    .line 56
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "dandelion"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooo00:Z

    .line 57
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "angelica"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "angelican"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "angelicain"

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "cattail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_18

    :cond_19
    move v1, v0

    goto :goto_19

    :cond_1a
    :goto_18
    move v1, v2

    :goto_19
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooo0o:Z

    .line 59
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "merlin"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "merlinnfc"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1a

    :cond_1b
    move v1, v0

    goto :goto_1b

    :cond_1c
    :goto_1a
    move v1, v2

    :goto_1b
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooooO0:Z

    .line 60
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "cannon"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "cannong"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1c

    :cond_1d
    move v1, v0

    goto :goto_1d

    :cond_1e
    :goto_1c
    move v1, v2

    :goto_1d
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooooOO:Z

    .line 61
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "lime"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "lemon"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "pomelo"

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "citrus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_1e

    :cond_1f
    move v1, v0

    goto :goto_1f

    :cond_20
    :goto_1e
    move v1, v2

    :goto_1f
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooooOo:Z

    .line 63
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "sunny"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "rainbow"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_20

    :cond_21
    move v1, v0

    goto :goto_21

    :cond_22
    :goto_20
    move v1, v2

    :goto_21
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooooo0:Z

    .line 64
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "iris"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "XIG02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "lilac"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_22

    :cond_23
    move v1, v0

    goto :goto_23

    :cond_24
    :goto_22
    move v1, v2

    :goto_23
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooooo:Z

    .line 65
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "evergo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "evergreen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_24

    :cond_25
    move v1, v0

    goto :goto_25

    :cond_26
    :goto_24
    move v1, v2

    :goto_25
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooooO:Z

    .line 66
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0oO:Z

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooooo:Z

    .line 67
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0oo:Z

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0OoOo0:Z

    .line 68
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO:Z

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->ooOO:Z

    .line 69
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "venus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00O0O:Z

    .line 70
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "star"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0:Z

    .line 71
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "mars"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Ooo:Z

    .line 72
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "vili"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00o0O:Z

    .line 73
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "renoir"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00ooo:Z

    .line 74
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "cetus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo000o:Z

    .line 75
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "ares"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "aresin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_26

    :cond_27
    move v1, v0

    goto :goto_27

    :cond_28
    :goto_26
    move v1, v2

    :goto_27
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00oO0o:Z

    .line 76
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "haydn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "haydnin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_28

    :cond_29
    move v1, v0

    goto :goto_29

    :cond_2a
    :goto_28
    move v1, v2

    :goto_29
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00oO0O:Z

    .line 77
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "courbet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "courbetin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2a

    :cond_2b
    move v1, v0

    goto :goto_2b

    :cond_2c
    :goto_2a
    move v1, v2

    :goto_2b
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0ooOO0:Z

    .line 78
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "sweet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "sweetin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "sweetin_pro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "sweet_pro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_2c

    :cond_2d
    move v1, v0

    goto :goto_2d

    :cond_2e
    :goto_2c
    move v1, v2

    :goto_2d
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0ooOOo:Z

    .line 79
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "vayu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "bhima"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_2e

    :cond_2f
    move v1, v0

    goto :goto_2f

    :cond_30
    :goto_2e
    move v1, v2

    :goto_2f
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0ooOoO:Z

    .line 80
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "camellia"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "camellian"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_30

    :cond_31
    move v1, v0

    goto :goto_31

    :cond_32
    :goto_30
    move v1, v2

    :goto_31
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0OOO0o:Z

    .line 81
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "enuma"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "elish"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_33
    move v0, v2

    :cond_34
    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0Oo0oo:Z

    .line 82
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "nabu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0OO00O:Z

    .line 83
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v1, "pissarro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo0o0Oo:Z

    .line 84
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "lisa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0O0O00:Z

    .line 85
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "mona"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000OOo:Z

    .line 86
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v1, "zeus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000:Z

    .line 87
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v1, "psyche"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O:Z

    .line 88
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000OOO()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000o:Z

    .line 89
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000OOO()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000:Z

    const-string v0, "KR"

    const-string v1, "JP"

    .line 90
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000o0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO()[I
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooo()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v0, v2, [I

    return-object v0

    :cond_0
    const-string v1, ","

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, v0

    new-array v1, v1, [I

    .line 5
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 6
    aget-object v3, v0, v2

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static OooO00o()Z
    .locals 1

    .line 3
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0OoOo0:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooO00o(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000o0:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static OooO00o(Z)Z
    .locals 3

    const-string/jumbo v0, "ro.miui.customized.region"

    .line 5
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr_sfr"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "fr_orange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "jp_kd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "es_vodafone"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public static OooO0O0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOOOo()Z

    move-result v0

    return v0
.end method

.method public static OooO0OO()F
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOo0()F

    move-result v0

    return v0
.end method

.method public static OooO0Oo()I
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo0o0()I

    move-result v0

    return v0
.end method

.method public static OooO0o()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000Oo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000Oo:Ljava/util/ArrayList;

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0oO()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    array-length v1, v0

    if-lez v1, :cond_0

    .line 5
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000Oo:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    :cond_0
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000Oo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static OooO0o0()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OooO0oO()[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooooO0()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v1, ","

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OooO0oo()I
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0O()I

    move-result v0

    return v0
.end method

.method public static OooOO0()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.miui.region"

    const-string v1, "CN"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OooOO0O()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0oO()Z

    move-result v0

    return v0
.end method

.method public static OooOO0o()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOOO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000o()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoo0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static OooOOO0()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOooo()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0o()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static OooOOOO()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static OooOOOo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o000()Z

    move-result v0

    return v0
.end method

.method public static OooOOo()Z
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v1, "onc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.boot.hwversion"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x32

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static OooOOo0()Z
    .locals 2

    const-string/jumbo v0, "ro.boot.hwversion"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOoO:Z

    if-eqz v1, :cond_1

    const-string v1, "7.1.7"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "7.2.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOOoo()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOOo:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.boot.hwc"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoO:Z

    if-nez v0, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static OooOo0()Z
    .locals 2

    const-string/jumbo v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static OooOo00()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOOo:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.boot.hwc"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India_48_5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOo0O()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOo:Z

    return v0
.end method

.method public static OooOo0o()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oo00()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static OooOoO()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoOO:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static OooOoO0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oo()Z

    move-result v0

    return v0
.end method

.method public static OooOoOO()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "ro.product.name"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "picasso_48m"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooOoo()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    return v0
.end method

.method public static OooOoo0()Z
    .locals 6

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOO:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const-string v2, "3.9.3"

    const-string v3, "3.9.5"

    .line 2
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.boot.hwversion"

    .line 3
    invoke-static {v3}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    .line 4
    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static OooOooO()Z
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOooo()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0O:Z

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOOO:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.boot.hwc"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo0()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo:Z

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo000()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0o:Z

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo00O()Z
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo00o()Z
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo0O0()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0:Z

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo0OO()Z
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v1, "toco"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static Oooo0o()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooooO0:Z

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo0o0()Z
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "lmi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo0oO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000ooo0()Z

    move-result v0

    return v0
.end method

.method public static Oooo0oo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oooo()Z

    move-result v0

    return v0
.end method

.method public static OoooO()Z
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v1, "shiva"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ro.boot.hwversion"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2615.39.1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static OoooO0()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOoo:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.boot.hwc"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OoooO00()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00()Z

    move-result v0

    return v0
.end method

.method public static OoooO0O()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO00:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static OoooOO0()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "curtana_in1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OoooOOO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOoo()Z

    move-result v0

    return v0
.end method

.method public static OoooOOo()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000o:Z

    return v0
.end method

.method public static OoooOo0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0O00()Z

    move-result v0

    return v0
.end method

.method public static OoooOoO()Z
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string/jumbo v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Premium Edition"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OoooOoo()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0:Z

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000oOoO()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Ooooo00()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000:Z

    return v0
.end method

.method public static Ooooo0o()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0O0o()Z

    move-result v0

    return v0
.end method

.method public static OooooO0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO00oo()Z

    move-result v0

    return v0
.end method

.method public static OooooOO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0OO()Z

    move-result v0

    return v0
.end method

.method public static OooooOo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0o0()Z

    move-result v0

    return v0
.end method

.method public static Oooooo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO()Z

    move-result v0

    return v0
.end method

.method public static Oooooo0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0oO()Z

    move-result v0

    return v0
.end method

.method public static OoooooO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo()Z

    move-result v0

    return v0
.end method

.method public static Ooooooo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoO0o()Z

    move-result v0

    return v0
.end method

.method public static o0000()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oooO()Z

    move-result v0

    return v0
.end method

.method public static o00000()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    if-nez v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooO0O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o000000()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o()Z

    move-result v0

    return v0
.end method

.method public static o000000O()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo()Z

    move-result v0

    return v0
.end method

.method public static o000000o()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooO0()Z

    move-result v0

    return v0
.end method

.method public static o00000O()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooO()Z

    move-result v0

    return v0
.end method

.method public static o00000O0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooO0o()Z

    move-result v0

    return v0
.end method

.method public static o00000OO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOO0()Z

    move-result v0

    return v0
.end method

.method public static o00000Oo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOO()Z

    move-result v0

    return v0
.end method

.method public static o00000o0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOoo()Z

    move-result v0

    return v0
.end method

.method public static o00000oO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooo0()Z

    move-result v0

    return v0
.end method

.method public static o00000oo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooo0o()Z

    move-result v0

    return v0
.end method

.method public static o0000O()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o0000O0()I
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00Ooo()I

    move-result v0

    return v0
.end method

.method public static o0000O00()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oooOO()Z

    move-result v0

    return v0
.end method

.method public static o0000O0O()I
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OOO()I

    move-result v0

    return v0
.end method

.method public static o0000OO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO00OO()Z

    move-result v0

    return v0
.end method

.method public static o0000OO0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oo0()Z

    move-result v0

    return v0
.end method

.method public static o0000OOO()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "mt[0-9]*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mediatek"

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static o0000Ooo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooo00()Z

    move-result v0

    return v0
.end method

.method public static o0000oO()Z
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OoO00O()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o0000oo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OoOoOo()Z

    move-result v0

    return v0
.end method

.method public static o000OO()Z
    .locals 2

    const/4 v0, -0x1

    const-string/jumbo v1, "ro.boot.camera.config"

    .line 1
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o000OOo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0oO()Z

    move-result v0

    return v0
.end method

.method public static o000oOoO()Z
    .locals 3

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "03"

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "persist.vendor.camera.rearMain.vendorID"

    .line 3
    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "persist.camera.rearMain.vendorID"

    .line 4
    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static o00O0O()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o000O()Z

    move-result v0

    return v0
.end method

.method public static o00Oo0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooooo0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00O0O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static o00Ooo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0O0()Z

    move-result v0

    return v0
.end method

.method public static o00o0O()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oOO()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static o00oO0O()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000O0O()I

    move-result v0

    and-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o00oO0o()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0ooOO()Z

    move-result v0

    return v0
.end method

.method public static o00ooo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oO()Z

    move-result v0

    return v0
.end method

.method public static o0O0O00()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOOO()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static o0OO00O()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0o0()Z

    move-result v0

    return v0
.end method

.method public static o0OOO0o()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0O()Z

    move-result v0

    return v0
.end method

.method public static o0Oo0oo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0Oo()Z

    move-result v0

    return v0
.end method

.method public static o0OoOo0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOo0()Z

    move-result v0

    return v0
.end method

.method public static o0ooOO0()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOooo()Z

    move-result v0

    return v0
.end method

.method public static o0ooOOo()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000O0O()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static o0ooOoO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0()Z

    move-result v0

    return v0
.end method

.method public static oo000o()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0o00()Z

    move-result v0

    return v0
.end method

.method public static oo0o0Oo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0o()Z

    move-result v0

    return v0
.end method

.method public static ooOO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo()Z

    move-result v0

    return v0
.end method
