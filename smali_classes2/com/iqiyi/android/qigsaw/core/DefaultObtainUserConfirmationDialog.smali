.class public Lcom/iqiyi/android/qigsaw/core/DefaultObtainUserConfirmationDialog;
.super Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;
.source "DefaultObtainUserConfirmationDialog.java"


# instance fields
.field public fromUserClick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->checkInternParametersIllegal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
