.class public Lcom/android/camera/fragment/live/LiveDownloadView;
.super Lcom/android/camera/fragment/sticker/download/DownloadView;
.source "LiveDownloadView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/sticker/download/DownloadView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/sticker/download/DownloadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAlphaNormal()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getStateImageResource(I)I
    .locals 2

    const v0, 0x7f080543

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    :cond_1
    const p1, 0x7f080544

    return p1

    :cond_2
    const p1, 0x7f080545

    return p1

    :cond_3
    return v0
.end method
