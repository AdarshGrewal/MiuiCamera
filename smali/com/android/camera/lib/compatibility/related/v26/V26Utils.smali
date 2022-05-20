.class public Lcom/android/camera/lib/compatibility/related/v26/V26Utils;
.super Ljava/lang/Object;
.source "V26Utils.java"


# static fields
.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_APPROACHING:I = 0x322

.field public static final MEDIA_RECORDER_INFO_NEXT_OUTPUT_FILE_STARTED:I = 0x323

.field public static final TAG:Ljava/lang/String; = "V26Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChannelForNotificationBuilder(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/Notification$Builder;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 p2, -0x1

    .line 6
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 8
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method

.method public static isZsl(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static setNextOutputFile(Landroid/media/MediaRecorder;Ljava/io/FileDescriptor;)Z
    .locals 2

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V26Utils"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setNextOutputFile(Landroid/media/MediaRecorder;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V26Utils"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
