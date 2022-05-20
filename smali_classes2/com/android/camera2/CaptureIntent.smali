.class public Lcom/android/camera2/CaptureIntent;
.super Ljava/lang/Object;
.source "CaptureIntent.java"


# static fields
.field public static final SUB_MODE_MASK:I = -0x1000000

.field public static final SUB_MODE_SHIFT:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCaptureIntent(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method
