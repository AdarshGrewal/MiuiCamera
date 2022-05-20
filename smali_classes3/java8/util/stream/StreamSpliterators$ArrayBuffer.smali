.class public abstract Ljava8/util/stream/StreamSpliterators$ArrayBuffer;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ArrayBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;,
        Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfLong;,
        Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;,
        Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;,
        Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfRef;
    }
.end annotation


# instance fields
.field public index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ljava8/util/stream/StreamSpliterators$ArrayBuffer;->index:I

    return-void
.end method
