.class public Lcom/android/camera/CameraPreferenceActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "CameraPreferenceActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraPreferenceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private dispatchPreferenceActivity()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_where"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v3

    .line 4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "intent_type"

    .line 6
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentVideoQuality()I

    move-result v0

    const-string v1, "intent_video_quality"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    const-class v0, Lcom/android/camera/PreferencePadActivity;

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 11
    :cond_1
    const-class v0, Lcom/android/camera/PreferencePhoneActivity;

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    :goto_0
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/CameraPreferenceActivity;->dispatchPreferenceActivity()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
