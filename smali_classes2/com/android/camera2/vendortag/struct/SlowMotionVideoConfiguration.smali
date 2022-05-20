.class public Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;
.super Ljava/lang/Object;
.source "SlowMotionVideoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;
    }
.end annotation


# instance fields
.field public final batchNbr:I

.field public final height:I

.field public final maxFps:I

.field public final width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->width:I

    .line 3
    iput p2, p0, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->height:I

    .line 4
    iput p3, p0, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->maxFps:I

    .line 5
    iput p4, p0, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->batchNbr:I

    return-void
.end method
