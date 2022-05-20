.class public Ljava8/util/ArrayPrefixHelpers;
.super Ljava/lang/Object;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/ArrayPrefixHelpers$IntCumulateTask;,
        Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;,
        Ljava8/util/ArrayPrefixHelpers$LongCumulateTask;,
        Ljava8/util/ArrayPrefixHelpers$CumulateTask;
    }
.end annotation


# static fields
.field public static final CUMULATE:I = 0x1

.field public static final FINISHED:I = 0x4

.field public static final MIN_PARTITION:I = 0x10

.field public static final SUMMED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
