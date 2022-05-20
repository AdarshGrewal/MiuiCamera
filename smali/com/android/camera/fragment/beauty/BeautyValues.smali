.class public Lcom/android/camera/fragment/beauty/BeautyValues;
.super Ljava/lang/Object;
.source "BeautyValues.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/camera/fragment/beauty/BeautyValues;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBeautyBodySlim:I

.field public mBeautyButtSlim:I

.field public mBeautyChin:I

.field public mBeautyEnlargeEye:I

.field public mBeautyHairLine:I

.field public mBeautyHeadSlim:I

.field public mBeautyLegSlim:I

.field public mBeautyLevel:Ljava/lang/String;

.field public mBeautyLips:I

.field public mBeautyMakeup:I

.field public mBeautyMakeupLevel:I

.field public mBeautyMakeupType:I

.field public mBeautyModeType:I

.field public mBeautyNeck:I

.field public mBeautyNose:I

.field public mBeautyRisorius:I

.field public mBeautyShoulderSlim:I

.field public mBeautySkinColor:I

.field public mBeautySkinSmooth:I

.field public mBeautySlimFace:I

.field public mBeautySlimNose:I

.field public mBeautySmile:I

.field public mBeautySolid:I

.field public mBeautyWhiten:I

.field public mBeautyWholeBodySlim:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues$1;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues$1;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/beauty/BeautyValues;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    .line 32
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    .line 6
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    .line 7
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 8
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 9
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    .line 10
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    .line 11
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    .line 12
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    .line 13
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    .line 14
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    .line 15
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    .line 16
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    .line 17
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    .line 18
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    .line 19
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    .line 20
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    .line 21
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    .line 22
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    .line 23
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    .line 24
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    .line 25
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    .line 26
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    .line 27
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    .line 28
    iget p1, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBeautyLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getValueByType(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "pref_beauty_head_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "pref_beauty_shoulder_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v0, "pref_beautify_hairline_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v0, "pref_beautify_pupil_line_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v0, "pref_beautify_makeup_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v0, "pref_beautify_blusher_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v0, "pref_beautify_skin_color_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v0, "pref_beautify_enlarge_eye_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v0, "pref_beautify_nose_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v0, "pref_beautify_slim_face_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v0, "pref_beautify_makeups_type_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v0, "pref_beautify_whiten_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v0, "pref_beautify_risorius_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "key_beauty_leg_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v0, "pref_beautify_chin_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v0, "pref_beautify_lips_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v0, "pref_beautify_neck_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_13
    const-string/jumbo v0, "pref_beautify_makeups_level_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto :goto_1

    :sswitch_14
    const-string/jumbo v0, "pref_beautify_slim_nose_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_15
    const-string/jumbo v0, "pref_beautify_smile_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_16
    const-string/jumbo v0, "pref_beauty_whole_body_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    goto :goto_1

    :sswitch_17
    const-string/jumbo v0, "pref_beauty_butt_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto :goto_1

    :sswitch_18
    const-string/jumbo v0, "pref_beautify_jelly_lips_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_1

    :sswitch_19
    const-string/jumbo v0, "pref_beautify_solid_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_1a
    const-string/jumbo v0, "pref_beauty_body_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    .line 2
    :pswitch_0
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    return p1

    .line 3
    :pswitch_1
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    return p1

    .line 4
    :pswitch_2
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    return p1

    .line 5
    :pswitch_3
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    return p1

    .line 6
    :pswitch_4
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    return p1

    .line 7
    :pswitch_5
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    return p1

    .line 8
    :pswitch_6
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    return p1

    .line 9
    :pswitch_7
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    return p1

    .line 10
    :pswitch_8
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    return p1

    .line 11
    :pswitch_9
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    return p1

    .line 12
    :pswitch_a
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    return p1

    .line 13
    :pswitch_b
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    return p1

    .line 14
    :pswitch_c
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    return p1

    .line 15
    :pswitch_d
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    return p1

    .line 16
    :pswitch_e
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    return p1

    .line 17
    :pswitch_f
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    return p1

    .line 18
    :pswitch_10
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    return p1

    .line 19
    :pswitch_11
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    return p1

    .line 20
    :pswitch_12
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    return p1

    .line 21
    :pswitch_13
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    return p1

    .line 22
    :pswitch_14
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    return p1

    .line 23
    :pswitch_15
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    return p1

    .line 24
    :pswitch_16
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    return p1

    .line 25
    :pswitch_17
    iget p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x676e6ee1 -> :sswitch_1a
        -0x5eed1fcd -> :sswitch_19
        -0x5e6b0daf -> :sswitch_18
        -0x5a8387f2 -> :sswitch_17
        -0x4b3d8c29 -> :sswitch_16
        -0x423823b0 -> :sswitch_15
        -0x3579d363 -> :sswitch_14
        -0x32af50b5 -> :sswitch_13
        -0x1403c3d1 -> :sswitch_12
        -0x12884130 -> :sswitch_11
        -0x102a61a6 -> :sswitch_10
        -0x8bc7263 -> :sswitch_f
        -0x25d6108 -> :sswitch_e
        0x2431a3 -> :sswitch_d
        0x2b95f4b5 -> :sswitch_c
        0x341866d3 -> :sswitch_b
        0x35532ea7 -> :sswitch_a
        0x36aaa8f8 -> :sswitch_9
        0x3ad8a2a3 -> :sswitch_8
        0x3e8271ec -> :sswitch_7
        0x3f0b1471 -> :sswitch_6
        0x5514d1b5 -> :sswitch_5
        0x55d54f59 -> :sswitch_4
        0x6202ad75 -> :sswitch_3
        0x62f067e6 -> :sswitch_2
        0x65e369e1 -> :sswitch_1
        0x73f08a21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
        :pswitch_9
        :pswitch_9
        :pswitch_9
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
.end method

.method public isBeautyBodyOn()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    if-lez v0, :cond_0

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

.method public isBeautyLevelOn()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    const-string v1, "i:0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isBeautyModelOn()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    if-eqz v0, :cond_0

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    if-eqz v0, :cond_1

    if-nez v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    if-eqz v0, :cond_2

    if-nez v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFaceBeautyOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyLevelOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isSmoothLevelOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyModelOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyBodyOn()Z

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

.method public isSmoothLevelOn()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetAll()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyLevel()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetSmoothLevel()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyModelLegacy()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyModel()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyBody()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyMode()V

    return-void
.end method

.method public resetBeautyBody()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    return-void
.end method

.method public resetBeautyLevel()V
    .locals 1

    const-string v0, "i:0"

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    return-void
.end method

.method public resetBeautyMode()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    return-void
.end method

.method public resetBeautyModel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    .line 7
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    .line 8
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    .line 9
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    .line 10
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    .line 11
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    .line 12
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    .line 13
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    .line 14
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    .line 15
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    return-void
.end method

.method public resetBeautyModelLegacy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    return-void
.end method

.method public resetSmoothLevel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    aput-object v7, v1, v6

    iget v6, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    iget v5, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    iget v4, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget v3, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "beauty level: %s | sc: %d | sf: %d | ss: %d | ee: %d "

    .line 4
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v7, 0x18

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    aput-object v8, v7, v6

    iget v6, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    iget v5, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    iget v4, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    iget v3, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xf

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x10

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x12

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x13

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x14

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x15

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x16

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x17

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const-string v1, "3d beauty level: %s | ss: %d |sf: %d | ee: %d | ns: %d | rs: %d | lp: %d | cn: %d | nk: %d | se: %d | sn: %d | hl: %d | solid: %d | whiten: %d | makeup: %d| headSlim: %d | bodySlim: %d | shoulderSlim: %d | legSlim: %d | wholeBodySlim: %d | buttSlim: %d | makeupType: %d | makeupLevel: %d | beautyMode: %d"

    .line 9
    invoke-static {v0, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 25
    :cond_0
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
