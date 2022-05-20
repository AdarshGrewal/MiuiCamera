.class public Lcom/android/camera/CameraIntentManager;
.super Ljava/lang/Object;
.source "CameraIntentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraIntentManager$HDRMode;,
        Lcom/android/camera/CameraIntentManager$FlashMode;,
        Lcom/android/camera/CameraIntentManager$CameraMode;,
        Lcom/android/camera/CameraIntentManager$CameraExtras;,
        Lcom/android/camera/CameraIntentManager$ControlActions;,
        Lcom/android/camera/CameraIntentManager$BroadcastControlExtras;
    }
.end annotation


# static fields
.field public static final ACTION_EDIT_DOCOCUMENT_IMAGE:Ljava/lang/String; = "com.miui.extraphoto.action.EDIT_DOCUMENT_PHOTO"

.field public static final ACTION_EDIT_IDCARD_IMAGE:Ljava/lang/String; = "com.miui.extraphoto.action.EDIT_IDCARD_PHOTO"

.field public static final ACTION_IDPHOTO_IMAGE:Ljava/lang/String; = "com.android.camera.action.IDPHOTO"

.field public static final ACTION_QR_CODE_CAPTURE:Ljava/lang/String; = "com.android.camera.action.QR_CODE_CAPTURE"

.field public static final ACTION_QR_CODE_ZXING:Ljava/lang/String; = "com.google.zxing.client.android.SCAN"

.field public static final ACTION_SPEECH_SHUTTER:Ljava/lang/String; = "com.android.camera.action.SPEECH_SHUTTER"

.field public static final ACTION_VIDEO_CAST:Ljava/lang/String; = "com.xiaomi.camera.action.VIDEO_CAST"

.field public static final ACTION_VOICE_CONTROL:Ljava/lang/String; = "android.media.action.VOICE_COMMAND"

.field public static final CALLER_AMAZON:Ljava/lang/String; = "com.amazon.dee.app"

.field public static final CALLER_CTS:Ljava/lang/String; = "android.providerui.cts"

.field public static final CALLER_FROM_HOME:Ljava/lang/String; = "com.miui.home"

.field public static final CALLER_GOOGLE_ASSISTANT:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final CALLER_MIUI_CAMERA:Ljava/lang/String; = "com.android.camera"

.field public static final CALLER_SYSTEM_SETTING:Ljava/lang/String; = "com.android.settings"

.field public static final CALLER_XIAO_AI:Ljava/lang/String; = "com.miui.voiceassist"

.field public static final CALLER_XIAO_AI_DEBUG_UTIL:Ljava/lang/String; = "com.xiaomi.voiceassistant"

.field public static final CALLER_XIAO_SHOP:Ljava/lang/String; = "com.xiaomi.shop"

.field public static final DOCUMENT_IMAGE_EFFECT:Ljava/lang/String; = "com.miui.extraphoto.extra.DOCUMENT_PHOTO_EFFECT"

.field public static final EXTRAS_CAMERA_FACING:Ljava/lang/String; = "android.intent.extras.CAMERA_FACING"

.field public static final EXTRAS_CAMERA_PORTRAIT:Ljava/lang/String; = "android.intent.extras.PORTRAIT"

.field public static final EXTRAS_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field public static final EXTRAS_SCREEN_SLIDE:Ljava/lang/String; = "android.intent.extras.SCREEN_SLIDE"

.field public static final EXTRA_ASSISTANT_HASH:Ljava/lang/String; = "com.android.camera.ASSISTANT_HASH"

.field public static final EXTRA_CTA_WEBVIEW_LINK:Ljava/lang/String; = "cta_url"

.field public static final EXTRA_FROM_VOICE_ROOT:Ljava/lang/String; = "com.android.camera.FROM_VOICE_ROOT"

.field public static final EXTRA_LAUNCH_SOURCE:Ljava/lang/String; = "com.android.systemui.camera_launch_source"

.field public static final EXTRA_LAUNCH_SOURCE_DOUBLE_POWER:Ljava/lang/String; = "power_double_tap"

.field public static final EXTRA_LAUNCH_SOURCE_DOUBLE_VOLUME:Ljava/lang/String; = "double_click_volume_down"

.field public static final EXTRA_LAUNCH_SOURCE_KEY_SHORT:Ljava/lang/String; = "key_short"

.field public static final EXTRA_LAUNCH_SOURCE_LOCKSCREEN_AFFORDANCE:Ljava/lang/String; = "lockscreen_affordance"

.field public static final EXTRA_LAUNCH_SOURCE_MIWATCH:Ljava/lang/String; = "miwatch"

.field public static final EXTRA_LAUNCH_SOURCE_STABILIZER:Ljava/lang/String; = "stabilizer"

.field public static final EXTRA_SHOW_WHEN_LOCKED:Ljava/lang/String; = "ShowCameraWhenLocked"

.field public static final EXTRA_START_ACTIVITY_WHEN_LOCKED:Ljava/lang/String; = "StartActivityWhenLocked"

.field public static final FLAG_MIUI_CANCEL_SPLIT:I = 0x8

.field public static final FLAG_MIUI_SPLIT_ACTIVITY:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CameraIntentManager"

.field public static final TIMER_DURATION_NONE:I = -0x1

.field public static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Intent;",
            "Lcom/android/camera/CameraIntentManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mIntent:Landroid/content/Intent;

.field public mReferer:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/CameraIntentManager;->parseReferer(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    return-void
.end method

.method public static addMiuiFlags(ILandroid/content/Intent;)V
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/content/Intent;

    const-string v1, "addMiuiFlags"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraIntentManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/CameraIntentManager;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraIntentManager;-><init>(Landroid/content/Intent;)V

    .line 3
    sget-object v1, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->dumpIntent(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_0
    return-object v0
.end method

.method public static getMiuiFlags(Landroid/content/Intent;)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/content/Intent;

    const-string v2, "getMiuiFlags"

    new-array v3, v0, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static isBackCameraIntent(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFromVoice(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/KeyKeeper;->getInstance()Lcom/android/camera/KeyKeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/KeyKeeper;->getAssistantHash()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "com.android.camera.ASSISTANT_HASH"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v0, "com.android.camera.FROM_VOICE_ROOT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public static isFrontCameraIntent(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaunchByMiWatch(Landroid/content/Intent;)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.android.systemui.camera_launch_source"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    :goto_0
    sget-object v0, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera_launch_source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "miwatch"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isStartActivityWhenLocked(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "StartActivityWhenLocked"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 2
    sget-object v0, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start activity when locked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isTabletSplitActivity(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0Oo:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->getMiuiFlags(Landroid/content/Intent;)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoCastIntent(Landroid/content/Intent;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "com.xiaomi.camera.action.VIDEO_CAST"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private parseReferer(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "android.intent.extra.REFERRER"

    .line 1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-string v1, "android.intent.extra.REFERRER_NAME"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    sget-object p1, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public static removeAllInstance()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public static removeInstance(Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setStartActivityWhenLocked(Landroid/content/Intent;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "StartActivityWhenLocked"

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public checkCallerLegality()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "com.miui.home"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "com.miui.voiceassist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "com.xiaomi.voiceassistant"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_3
    const-string v3, "com.xiaomi.shop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v3, "com.android.camera"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_5
    const-string v3, "com.amazon.dee.app"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4
    sget-object v2, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCallerLegality: Unknown caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_0
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x74b9fdea -> :sswitch_6
        -0x27a1a4a6 -> :sswitch_5
        0xee42b91 -> :sswitch_4
        0x108fdb5c -> :sswitch_3
        0x348502d2 -> :sswitch_2
        0x5b883f2a -> :sswitch_1
        0x7ce26eb0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public checkIntentLocationPermission(Landroid/app/Activity;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent calling package is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 6
    invoke-virtual {v0, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public destroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    return-void
.end method

.method public getCaller()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/camera/CameraIntentManager;->parseReferer(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraFacing()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extras.CAMERA_FACING"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CAMERA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "UNSPECIFIED"

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIDEO"

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CAPTURE"

    return-object v0

    :cond_1
    return-object v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v2
.end method

.method public getCameraModeId()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "MANUAL_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "PANORAMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "PANORAMIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "PORTRAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "SUPER_NIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "FAST_MOTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v1, "SHORT_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string v1, "SLOW_MOTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v1, "DOC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_b
    const-string v1, "ULTRA_PIXEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_c
    const-string v1, "SQUARE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_d
    const-string v1, "MIMOJI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_e
    const-string v1, "MANUAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v1, 0xa0

    const/16 v3, 0xa3

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 v0, 0xba

    return v0

    :pswitch_1
    const/16 v0, 0xb8

    return v0

    :pswitch_2
    const/16 v0, 0xaf

    return v0

    :pswitch_3
    const/16 v0, 0xad

    return v0

    .line 3
    :pswitch_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xac

    return v0

    :cond_1
    return v1

    :pswitch_5
    const/16 v0, 0xa9

    return v0

    :pswitch_6
    const/16 v0, 0xa2

    return v0

    .line 4
    :pswitch_7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000O0()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/16 v0, 0xb7

    return v0

    :cond_2
    const/16 v0, 0xa1

    return v0

    :pswitch_8
    return v3

    :pswitch_9
    const/16 v0, 0xab

    return v0

    :pswitch_a
    const/16 v0, 0xa6

    return v0

    :pswitch_b
    const/16 v0, 0xa7

    return v0

    :pswitch_c
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78e2243a -> :sswitch_e
        -0x7871f203 -> :sswitch_d
        -0x6dc0b2e3 -> :sswitch_c
        -0x892fc0d -> :sswitch_b
        0x10918 -> :sswitch_a
        0x3edbbb4 -> :sswitch_9
        0x49256b8 -> :sswitch_8
        0x4de1c5b -> :sswitch_7
        0xe9700f9 -> :sswitch_6
        0x4bbb5326 -> :sswitch_5
        0x4fe51614 -> :sswitch_4
        0x5a1dab9b -> :sswitch_3
        0x5f263966 -> :sswitch_2
        0x6e6c9675 -> :sswitch_1
        0x6f917a7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
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

.method public getCameraSubMode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CAMERA_SUB_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraCropValue()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "crop"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraSavedUri()Landroid/net/Uri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "output"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraShouldSaveCapture()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "save-image"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFilterMode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CAMERA_FILTER_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CAMERA_FLASH_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHdrMode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CAMERA_HDR_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.extra.sizeLimit"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimerDurationSeconds()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoDurationTime()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EXTRA_DURATION_LIMIT has not been defined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVideoQuality()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVoiceControlAction()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extras.VOICE_CONTROL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "NONE"

    if-nez v0, :cond_0

    return-object v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    return-object v0
.end method

.method public isCtsCall()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.providerui.cts"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isFromScreenSlide()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.extras.SCREEN_SLIDE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->getCameraFacing()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->isFrontCameraIntent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isFromVolumeKey()Ljava/lang/Boolean;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "com.android.systemui.camera_launch_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera_launch_source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v1

    const-string/jumbo v2, "power_double_tap"

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x800000

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "double_click_volume_down"

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "stabilizer"

    .line 8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "miwatch"

    .line 9
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 10
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.camera.action.IDPHOTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isLaunchFromLockscreen(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isQuickLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v1, "keyguard"

    .line 2
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-nez p1, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    return p1
.end method

.method public isOnlyForceOpenMainBackCamera()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "NoUiQuery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOpenOnly(Landroid/app/Activity;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VOICE_COMMAND"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.google.android.googlequicksearchbox"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_0
    const-string v2, "android.intent.action.MAIN"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    iget-object v2, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    const-string v6, "android.intent.category.VOICE"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/camera/CameraIntentManager;->isFromVoice(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    sget-object v2, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    const-string v6, "from voice root, not open only"

    invoke-static {v2, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isOnlyForceOpenMainBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    sget-object v2, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    const-string v4, "not from voice root, just open"

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/CameraIntentManager;->isFromVoice(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 13
    sget-object p1, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    const-string v0, "just open only"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 14
    :cond_5
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    return v5

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 16
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.camera.VoiceCamera"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_8
    :goto_2
    return v5
.end method

.method public isQuickCapture()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.quickCapture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isQuickLaunch()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 3
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 4
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "com.android.systemui.camera_launch_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lockscreen_affordance"

    .line 6
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "power_double_tap"

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isScanQRCodeIntent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.action.QR_CODE_CAPTURE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.zxing.client.android.SCAN"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isUseFrontCamera()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "USE_FRONT_CAMERA extras has not been defined!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideoCastIntent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.camera.action.VIDEO_CAST"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setReferer(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    :cond_0
    return-void
.end method
