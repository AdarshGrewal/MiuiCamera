.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;
.super Ljava/lang/Object;
.source "FuScene.java"


# instance fields
.field public background:Ljava/lang/String;

.field public camera:Ljava/lang/String;

.field public light:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene$1;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$entity$LabelCollection$SceneType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, ""

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->light:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->background:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->camera:Ljava/lang/String;

    .line 5
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    return-object p1
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->background:Ljava/lang/String;

    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->camera:Ljava/lang/String;

    return-void
.end method

.method public setLight(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->light:Ljava/lang/String;

    return-void
.end method
