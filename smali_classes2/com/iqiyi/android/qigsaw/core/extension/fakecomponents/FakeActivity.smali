.class public Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/FakeActivity;
.super Landroid/app/Activity;
.source "FakeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/OrientationCompat;->releaseFixedOrientation(Landroid/app/Activity;)I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/OrientationCompat;->fixedOrientation(Landroid/app/Activity;I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
