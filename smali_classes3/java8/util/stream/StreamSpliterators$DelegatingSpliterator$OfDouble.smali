.class public final Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;
.super Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava8/util/function/DoubleConsumer;",
        "Ljava8/util/Spliterator$OfDouble;",
        ">;",
        "Ljava8/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava8/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator$OfDouble;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;-><init>(Ljava8/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfDouble;

    return-object v0
.end method
