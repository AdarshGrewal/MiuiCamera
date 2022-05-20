.class public abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showCenterToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x11

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
