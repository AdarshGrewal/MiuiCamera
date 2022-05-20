.class public abstract Lcom/android/camera/preferences/CameraPreference;
.super Ljava/lang/Object;
.source "CameraPreference.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/preferences/CameraPreference;->mContext:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/android/camera/R$styleable;->CameraPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/preferences/CameraPreference;->mTitle:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/preferences/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraPreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method
