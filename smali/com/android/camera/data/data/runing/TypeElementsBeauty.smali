.class public Lcom/android/camera/data/data/runing/TypeElementsBeauty;
.super Lcom/android/camera/data/data/TypeElements;
.source "TypeElementsBeauty.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/TypeElements;-><init>(Lcom/android/camera/data/data/ComponentData;)V

    return-void
.end method

.method private createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;
    .locals 10

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->supportType(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p3

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    const/4 p3, -0x1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 v1, 0x1

    sparse-switch p4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p4, "key_video_bokeh_blur_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo p4, "pref_beautify_toughman_makeups_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo p4, "pref_beauty_head_slim_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x17

    goto/16 :goto_0

    :sswitch_3
    const-string p4, "key_live_enlarge_eye_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo p4, "pref_beauty_shoulder_slim_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x19

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo p4, "pref_beautify_makeups_none"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x10

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo p4, "pref_beautify_hairline_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo p4, "pref_beautify_female_pink_makeups_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x14

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo p4, "pref_beautify_makeup_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string p4, "key_video_bokeh_spin_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x22

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo p4, "pref_beautify_skin_color_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo p4, "pref_beautify_enlarge_eye_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x2

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo p4, "pref_beautify_nose_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x7

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo p4, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x6

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo p4, "pref_beautify_slim_face_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    move p3, v1

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo p4, "pref_beautify_whiten_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x5

    goto/16 :goto_0

    :sswitch_10
    const-string p4, "key_video_bokeh_color_point_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x24

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo p4, "pref_beautify_nude_makeups_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string p4, "key_live_shrink_face_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x1d

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo p4, "pref_beautify_color_skin_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x3

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo p4, "pref_beautify_risorius_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x8

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo p4, "pref_beautify_gentleman_makeups_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x13

    goto/16 :goto_0

    :sswitch_16
    const-string p4, "key_beauty_leg_slim_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x1a

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo p4, "pref_beautify_chin_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0xb

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo p4, "pref_beautify_lips_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0xa

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo p4, "pref_beautify_neck_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0xc

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo p4, "pref_beautify_slim_nose_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0xe

    goto/16 :goto_0

    :sswitch_1b
    const-string p4, "key_video_bokeh_blur_null"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x20

    goto :goto_0

    :sswitch_1c
    const-string/jumbo p4, "pref_beautify_smile_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0xd

    goto :goto_0

    :sswitch_1d
    const-string/jumbo p4, "pref_beauty_whole_body_slim_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x1b

    goto :goto_0

    :sswitch_1e
    const-string/jumbo p4, "pref_beautify_female_blue_makeups_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x15

    goto :goto_0

    :sswitch_1f
    const-string p4, "key_video_bokeh_zoom_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x23

    goto :goto_0

    :sswitch_20
    const-string/jumbo p4, "pref_beauty_butt_slim_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x1c

    goto :goto_0

    :sswitch_21
    const-string/jumbo p4, "pref_beautify_solid_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x4

    goto :goto_0

    :sswitch_22
    const-string/jumbo p4, "pref_beautify_solid_makeups_ratio_key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x16

    goto :goto_0

    :sswitch_23
    const-string/jumbo p4, "pref_beauty_body_slim_ratio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x18

    goto :goto_0

    :sswitch_24
    const-string p4, "key_live_smooth_strength"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x1f

    :cond_1
    :goto_0
    const p4, 0x7f12039f

    const v2, 0x7f080420

    const v3, 0x7f080433

    const v4, 0x7f120398

    const v5, 0x7f0803ec

    const v6, 0x7f12039b

    const v7, 0x7f0803ef

    const v8, 0x7f1203a5

    const v9, 0x7f0803d0

    packed-switch p3, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "to be continued createTypeItem = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_0
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080558

    const v0, 0x7f1209b2

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 5
    :pswitch_1
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08055a

    const v0, 0x7f1209b4

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 6
    :pswitch_2
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080559

    const v0, 0x7f1209b3

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 7
    :pswitch_3
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080557

    const v0, 0x7f1209b1

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 8
    :pswitch_4
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f0802b9

    const v0, 0x7f120465

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 9
    :pswitch_5
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f1203a4

    invoke-direct {p3, v3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 10
    :pswitch_6
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p3, v5, v4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 11
    :pswitch_7
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p3, v7, v6, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    :pswitch_8
    return-object v0

    .line 12
    :pswitch_9
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08043c

    const v0, 0x7f12020c

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 13
    :pswitch_a
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080407

    const v0, 0x7f120208

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 14
    :pswitch_b
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080431

    const v0, 0x7f12020a

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 15
    :pswitch_c
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f0803d2

    const v0, 0x7f120206

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 16
    :pswitch_d
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080402

    const v0, 0x7f120207

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 17
    :pswitch_e
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08009f

    const v0, 0x7f12022a

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 18
    :pswitch_f
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08009b

    const v0, 0x7f120226

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 19
    :pswitch_10
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08009e

    const v0, 0x7f120229

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 20
    :pswitch_11
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08009c

    const v0, 0x7f120227

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 21
    :pswitch_12
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f0800a0

    const v0, 0x7f12022b

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 22
    :pswitch_13
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08009d

    const v0, 0x7f120228

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 23
    :pswitch_14
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const v0, 0x7f080412

    invoke-direct {p3, v0, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 24
    :pswitch_15
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const v0, 0x7f080411

    invoke-direct {p3, v0, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 25
    :pswitch_16
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f1203a6

    invoke-direct {p3, v2, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 26
    :pswitch_17
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f1203a7

    invoke-direct {p3, v9, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 27
    :pswitch_18
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080549

    const v0, 0x7f1203a0

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 28
    :pswitch_19
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f0803d5

    const v0, 0x7f120396

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 29
    :pswitch_1a
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080408

    const v0, 0x7f12039e

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 30
    :pswitch_1b
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080401

    const v0, 0x7f12039c

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 31
    :pswitch_1c
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08054c

    const v0, 0x7f1203a3

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 32
    :pswitch_1d
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f1203a1

    invoke-direct {p3, v2, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 33
    :pswitch_1e
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->getSmoothNameRes()I

    move-result p4

    invoke-direct {p3, v3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 34
    :pswitch_1f
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08043b

    invoke-direct {p3, p4, v8, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 35
    :pswitch_20
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080434

    const v0, 0x7f1203a8

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 36
    :pswitch_21
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f080432

    const v0, 0x7f120397

    invoke-direct {p3, p4, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p3, v1}, Lcom/android/camera/data/data/TypeItem;->setExpandable(Z)Lcom/android/camera/data/data/TypeItem;

    return-object p3

    .line 38
    :pswitch_22
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p3, v5, v4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 39
    :pswitch_23
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p3, v7, v6, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 40
    :pswitch_24
    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p3, v9, v8, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dcb43c1 -> :sswitch_24
        -0x676e6ee1 -> :sswitch_23
        -0x62238142 -> :sswitch_22
        -0x5eed1fcd -> :sswitch_21
        -0x5a8387f2 -> :sswitch_20
        -0x578d3e1f -> :sswitch_1f
        -0x512efc00 -> :sswitch_1e
        -0x4b3d8c29 -> :sswitch_1d
        -0x423823b0 -> :sswitch_1c
        -0x35cb8f23 -> :sswitch_1b
        -0x3579d363 -> :sswitch_1a
        -0x1403c3d1 -> :sswitch_19
        -0x12884130 -> :sswitch_18
        -0x102a61a6 -> :sswitch_17
        -0x8bc7263 -> :sswitch_16
        -0x7ec39d0 -> :sswitch_15
        -0x25d6108 -> :sswitch_14
        0x793fd29 -> :sswitch_13
        0xa78ecec -> :sswitch_12
        0x15cb02a3 -> :sswitch_11
        0x2874ca3e -> :sswitch_10
        0x2b95f4b5 -> :sswitch_f
        0x35532ea7 -> :sswitch_e
        0x36aaa8f8 -> :sswitch_d
        0x3ad8a2a3 -> :sswitch_c
        0x3e8271ec -> :sswitch_b
        0x3f0b1471 -> :sswitch_a
        0x54544710 -> :sswitch_9
        0x55d54f59 -> :sswitch_8
        0x60e7c61c -> :sswitch_7
        0x62f067e6 -> :sswitch_6
        0x65334ab1 -> :sswitch_5
        0x65e369e1 -> :sswitch_4
        0x699265fd -> :sswitch_3
        0x73f08a21 -> :sswitch_2
        0x75f4541a -> :sswitch_1
        0x7c890f75 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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

.method private deleteBeautyItems(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/TypeItem;

    iget-object v1, v1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    if-ne v1, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_2

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private getSmoothNameRes()I
    .locals 1

    const-string v0, "female"

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUseNewBeautyMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120235

    return v0

    :cond_0
    const-string v0, "male"

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUseNewBeautyMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f12023e

    return v0

    :cond_1
    const v0, 0x7f1203a4

    return v0
.end method

.method private initAdvanceItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_ADVANCE:[Ljava/lang/String;

    const-string v1, "3"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method private initFigureItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_BACK_FIGURE:[Ljava/lang/String;

    const-string v1, "6"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    .line 3
    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const-string p4, "4"

    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    .line 4
    invoke-direct {p0, p4, v0, p2, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    .line 5
    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private initFrontMakeupsItems(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isNewMakeupsDependBeautyVersion()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_MAKEUPS:[Ljava/lang/String;

    const/4 v4, 0x1

    const-string v1, "12"

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    :cond_0
    return-void
.end method

.method private initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;Z",
            "Lcom/android/camera2/CameraCapabilities;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 2
    invoke-direct {p0, p1, v2, p4, p5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initMiLiveItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_MI_LIVE:[Ljava/lang/String;

    const-string v1, "9"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    .line 3
    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const-string p4, "9"

    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    .line 4
    invoke-direct {p0, p4, v0, p2, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    .line 5
    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private initReModelingItems(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_REMODELING:[Ljava/lang/String;

    const-string v6, "4"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v3, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    .line 3
    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v0

    const-string/jumbo v1, "pref_beautify_risorius_ratio_key"

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v7, v4

    move v8, v7

    :goto_0
    if-ge v5, v0, :cond_5

    .line 5
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/data/data/TypeItem;

    iget-object v9, v9, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x25d6108

    if-eq v10, v11, :cond_1

    const v11, 0x62f067e6

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v10, "pref_beautify_hairline_ratio_key"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v4

    :goto_2
    if-eqz v9, :cond_4

    if-eq v9, v2, :cond_3

    goto :goto_3

    :cond_3
    move v7, v5

    goto :goto_3

    :cond_4
    move v8, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eq v7, v4, :cond_6

    if-eq v8, v4, :cond_6

    .line 6
    invoke-interface {p1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    .line 7
    invoke-direct {p0, v6, v0, v2, p2}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 8
    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    :cond_7
    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isNewMakeupsDependBeautyVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "pref_beautify_color_skin_ratio_key"

    .line 10
    invoke-direct {p0, v6, v0, v2, p2}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v3, 0x3

    .line 11
    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12
    :cond_8
    invoke-direct {p0, p1, v1}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->deleteBeautyItems(Ljava/util/List;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyMakeUp()Z

    move-result p3

    if-eqz p3, :cond_9

    const-string/jumbo p3, "pref_beautify_makeup_ratio_key"

    .line 14
    invoke-direct {p0, v6, p3, v2, p2}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 15
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private initSuperNightBeautyItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_SUPER_NIGHT:[Ljava/lang/String;

    const-string v1, "11"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method private initTsBeautyItems(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isBeautyModeDependTsVersion()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_TRUESIGHT:[Ljava/lang/String;

    const/4 v4, 0x1

    const-string v1, "5"

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    const-string p2, "male"

    .line 4
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isUseNewBeautyMode(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "pref_beautify_whiten_ratio_key"

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->deleteBeautyItems(Ljava/util/List;Ljava/lang/String;)V

    const-string/jumbo p2, "pref_beautify_makeup_ratio_key"

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->deleteBeautyItems(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initVideoBokehItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/android/camera/constant/VideoBokehConstant;->BEAUTY_CATEGORY_VIDEO_BOKEH:[Ljava/lang/String;

    const-string v1, "8"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method private supportType(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "pref_beautify_color_skin_ratio_key"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportSkinColor()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "12"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportMakeups()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 3
    :cond_2
    invoke-virtual {p3, p2}, Lcom/android/camera2/CameraCapabilities;->isSupportBeautyType(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public initAndGetSupportItems(ILcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/TypeElements;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    check-cast v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_3

    const/16 v3, 0x39

    if-eq v2, v3, :cond_2

    const/16 v3, 0x620

    if-eq v2, v3, :cond_1

    const/16 v3, 0x621

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "6"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    goto :goto_1

    :pswitch_1
    const-string v2, "5"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :pswitch_2
    const-string v2, "4"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_3
    const-string v2, "3"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v2, "12"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const-string v2, "11"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x7

    goto :goto_1

    :cond_2
    const-string v2, "9"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const-string v2, "8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "to be continuedshineType"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_4
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initSuperNightBeautyItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_2

    .line 6
    :pswitch_5
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initVideoBokehItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_2

    .line 7
    :pswitch_6
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initFigureItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_2

    .line 8
    :pswitch_7
    invoke-direct {p0, v1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initFrontMakeupsItems(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_2

    .line 9
    :pswitch_8
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initMiLiveItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_2

    .line 10
    :pswitch_9
    invoke-direct {p0, v1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initTsBeautyItems(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_2

    .line 11
    :pswitch_a
    invoke-direct {p0, v1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initReModelingItems(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_2

    .line 12
    :pswitch_b
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initAdvanceItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
