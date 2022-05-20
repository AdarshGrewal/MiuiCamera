.class public Lcom/android/camera/constant/SkinColorConstant;
.super Ljava/lang/Object;
.source "SkinColorConstant.java"


# static fields
.field public static final BACK:Ljava/lang/String; = "-1"

.field public static final CARAMEL:Ljava/lang/String; = "1"

.field public static final LOTUS:Ljava/lang/String; = "7"

.field public static final MATTE:Ljava/lang/String; = "8"

.field public static final MILKTEA:Ljava/lang/String; = "3"

.field public static final OFF:Ljava/lang/String; = "0"

.field public static final PEACH:Ljava/lang/String; = "6"

.field public static final PINK:Ljava/lang/String; = "5"

.field public static final WHEAT:Ljava/lang/String; = "2"

.field public static final WHITE:Ljava/lang/String; = "4"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSkinColor(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x5a4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x9

    goto :goto_1

    :pswitch_1
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_1

    :pswitch_2
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    goto :goto_1

    :pswitch_3
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    goto :goto_1

    :pswitch_4
    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_1

    :pswitch_5
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_1

    :pswitch_6
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :pswitch_7
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :pswitch_8
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    return v2

    :pswitch_9
    const p0, 0x7f06003e

    return p0

    :pswitch_a
    const p0, 0x7f06003d

    return p0

    :pswitch_b
    const p0, 0x7f060041

    return p0

    :pswitch_c
    const p0, 0x7f060042

    return p0

    :pswitch_d
    const p0, 0x7f060044

    return p0

    :pswitch_e
    const p0, 0x7f06003f

    return p0

    :pswitch_f
    const p0, 0x7f060043

    return p0

    :pswitch_10
    const p0, 0x7f06003c

    return p0

    :pswitch_11
    const p0, 0x7f060040

    return p0

    :pswitch_12
    const p0, 0x7f06001d

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static getString(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x5a4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x9

    goto :goto_1

    :pswitch_1
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_1

    :pswitch_2
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    goto :goto_1

    :pswitch_3
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    goto :goto_1

    :pswitch_4
    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_1

    :pswitch_5
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_1

    :pswitch_6
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :pswitch_7
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :pswitch_8
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    return v2

    :pswitch_9
    const p0, 0x7f120238

    return p0

    :pswitch_a
    const p0, 0x7f120237

    return p0

    :pswitch_b
    const p0, 0x7f12023a

    return p0

    :pswitch_c
    const p0, 0x7f12023b

    return p0

    :pswitch_d
    const p0, 0x7f12023d

    return p0

    :pswitch_e
    const p0, 0x7f120239

    return p0

    :pswitch_f
    const p0, 0x7f12023c

    return p0

    :pswitch_10
    const p0, 0x7f120236

    return p0

    :pswitch_11
    const p0, 0x7f120232

    return p0

    :pswitch_12
    const p0, 0x7f1204cd

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
