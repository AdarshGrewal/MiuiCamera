.class public final Lcom/xiaomi/compat/manager/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# static fields
.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setInternalLegacyStreamType(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method
