.class public Lcom/android/camera/module/video/VideoUtil;
.super Ljava/lang/Object;
.source "VideoUtil.java"


# static fields
.field public static final FILE_NUMBER_SINGLE:I = -0x1

.field public static final HOLD_WHEN_SAVING_VIDEO:Z = false

.field public static final MILLIS_PER_MINUTE:I = 0xea60

.field public static final MIN_BACK_RECORDING_MINUTE:I = 0x14

.field public static final MIN_FRONT_RECORDING_MINUTE:I = 0xa

.field public static final START_OFFSET_MS:J = 0x1c2L

.field public static final START_RECORDING_OFFSET:J = 0x12cL

.field public static final THREE_MINUTE:I = 0x3

.field public static final VIDEO_CAPTURE_INTERVAL:J = 0x7d0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boostSystemForRecord(I)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->is8KHigherVideoQuality(I)Z

    move-result v0

    const-wide/16 v1, 0xa2

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOoO0()J

    move-result-wide v3

    .line 3
    invoke-static {v3, v4}, Lcom/android/camera/Util;->boostCameraByThreshold(J)V

    .line 4
    invoke-static {v1, v2}, Lcom/android/camera/Util;->reclaimMemoryForCamera(J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo()J

    move-result-wide v3

    .line 7
    invoke-static {v3, v4}, Lcom/android/camera/Util;->boostCameraByThreshold(J)V

    .line 8
    invoke-static {v1, v2}, Lcom/android/camera/Util;->reclaimMemoryForCamera(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static createVideoName(JILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-gtz p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p0, Ljava/text/SimpleDateFormat;

    const p1, 0x7f1209d6

    .line 3
    invoke-static {p1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method public static deleteVideoFile(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete invalid video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p2, :cond_0

    .line 1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "_%d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    move-object v4, v6

    .line 3
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_HDR10"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_HDR10PLUS"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_HLG"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    if-eqz p5, :cond_4

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_8K"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    :cond_4
    :goto_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-nez v5, :cond_c

    .line 11
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v8, -0x44904cdc

    if-eq v5, v8, :cond_7

    const v8, -0x449048dd

    if-eq v5, v8, :cond_6

    const v8, 0x1043c2c7

    if-eq v5, v8, :cond_5

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "slow_motion_480_direct"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_3

    :cond_6
    const-string/jumbo v5, "slow_motion_240"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    goto :goto_3

    :cond_7
    const-string/jumbo v5, "slow_motion_120"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_3

    :cond_8
    :goto_2
    move v5, v7

    :goto_3
    if-eqz v5, :cond_b

    if-eq v5, v3, :cond_a

    if-eq v5, v6, :cond_9

    goto :goto_4

    .line 12
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_HSR_480"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 13
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_HSR_240"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 14
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_HSR_120"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    :cond_c
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string/jumbo v9, "slow_motion_1920"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string/jumbo v9, "slow_motion_960"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string/jumbo v9, "slow_motion_480"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 18
    :cond_d
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 19
    invoke-static {}, Lcom/android/camera/storage/Storage;->generatePrimaryTempFile()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 20
    :cond_e
    invoke-static {}, Lcom/android/camera/storage/Storage;->generateTempFilepath()Ljava/lang/String;

    move-result-object v1

    .line 21
    :goto_5
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".nomedia"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/camera/Util;->createFile(Ljava/io/File;)Z

    goto :goto_6

    :cond_f
    if-eqz p6, :cond_10

    .line 22
    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    goto :goto_6

    .line 23
    :cond_10
    invoke-static {}, Lcom/android/camera/storage/Storage;->generatePrimaryDirectoryPath()Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x1ff

    invoke-static {v9, v10, v7, v7}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    .line 25
    invoke-static {v1}, Lcom/android/camera/Util;->isPathExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_6

    :cond_11
    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    :goto_6
    move v7, v2

    :cond_12
    add-int/2addr v7, v3

    .line 26
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 27
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 28
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 29
    sget-object v12, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add a suffix caz dup title for exists path: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_13
    if-nez v11, :cond_12

    const/4 v1, 0x4

    .line 31
    sget-object v7, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v10, v6, v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v3

    const-string v2, "genContentValues: path=%s isStartRecorder=%s "

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v2, "title"

    .line 33
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 34
    invoke-virtual {v1, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    .line 35
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_data"

    .line 36
    invoke-virtual {v1, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_14

    const-string/jumbo v2, "relative_path"

    const-string v3, "DCIM/Camera/"

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v3, v3, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "resolution"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 41
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_15

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_16

    .line 42
    :cond_15
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 43
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "longitude"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 44
    :cond_16
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v2, "save_cover"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public static getHSRValue(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getHSRValue(Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/module/video/VideoConfig;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/android/camera/module/video/VideoConfig;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no pre-defined bitrate for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget p0, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_0
    return p0
.end method

.method public static getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProVideoModule()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastmotionModulePro()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static getRecorderMaxFileSize(IJ)J
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/32 v2, 0xc800000

    sub-long/2addr v0, v2

    if-lez p0, :cond_0

    int-to-long v2, p0

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide v2, 0xdac00000L

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0OOo()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-wide v2, Lcom/android/camera/module/video/VideoConfig;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    :goto_0
    move-wide v0, v2

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long p0, p1, v2

    if-lez p0, :cond_3

    cmp-long p0, p1, v0

    if-gez p0, :cond_3

    goto :goto_1

    :cond_3
    move-wide p1, v0

    :goto_1
    return-wide p1
.end method

.method public static getSpeedRecordVideoLength(JDI)J
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    long-to-double p0, p0

    div-double/2addr p0, p2

    int-to-double p2, p4

    div-double/2addr p0, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static hideHint()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v1

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMacroModeHint(II)V

    const v1, 0x7f120766

    .line 5
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioBGHint(II)V

    const v1, 0x7f120856

    .line 6
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioSingleBGHint(II)V

    .line 7
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1208a7

    goto :goto_0

    :cond_0
    const v1, 0x7f1208a6

    :goto_0
    const-string v3, "ai_aduio_single_desc"

    invoke-interface {v0, v3, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioSingleDescTip(Ljava/lang/String;II)V

    .line 8
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0:Z

    if-eqz v1, :cond_1

    const v1, 0x7f1208a4

    goto :goto_1

    :cond_1
    const v1, 0x7f1208a3

    :goto_1
    const-string v3, "ai_aduio_new_desc"

    invoke-interface {v0, v3, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioNewDescTip(Ljava/lang/String;II)V

    const v1, 0x7f1207b5

    .line 9
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiEnhancedVideoHint(II)V

    const v1, 0x7f12091c

    const-string/jumbo v3, "super_eis"

    .line 10
    invoke-interface {v0, v3, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    const v1, 0x7f1209ae

    const-string/jumbo v3, "video_beautify"

    .line 11
    invoke-interface {v0, v3, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    const v1, 0x7f1209ad

    .line 12
    invoke-interface {v0, v3, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideSwitchTip()V

    .line 14
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1203ae

    goto :goto_2

    :cond_2
    const v1, 0x7f120687

    :goto_2
    const-string v3, "esp_display"

    .line 15
    invoke-interface {v0, v3, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method public static is4K30FpsEISSupported()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000oOO()Z

    move-result v0

    return v0
.end method

.method public static isBluetoothScoOn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isBluetoothScoOn()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFPS120(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_120"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS1920(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_1920"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS240(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_240"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS480(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_480"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS480Direct(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_480_direct"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFPS960(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "slow_motion_960"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setNextOutputFile(Ljava/lang/String;Landroid/media/MediaRecorder;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setNextOutputFile, filePath is empty"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1, p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setNextOutputFile(Landroid/media/MediaRecorder;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-static {p0, v2}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setNextOutputFile(Landroid/media/MediaRecorder;Ljava/io/FileDescriptor;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    :try_start_1
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open file failed, filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    return v1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "setParameterExtra("

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setParameter"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") successful!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") failed:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
