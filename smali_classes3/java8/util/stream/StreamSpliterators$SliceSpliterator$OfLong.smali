.class public final Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong;
.super Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava8/util/Spliterator$OfLong;",
        "Ljava8/util/function/LongConsumer;",
        ">;",
        "Ljava8/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator$OfLong;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava8/util/Spliterator$OfLong;JJJJ)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;JJJJ)V

    return-void
.end method

.method public static synthetic lambda$emptyConsumer$151(J)V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic emptyConsumer()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong;->emptyConsumer()Ljava8/util/function/LongConsumer;

    move-result-object v0

    return-object v0
.end method

.method public emptyConsumer()Ljava8/util/function/LongConsumer;
    .locals 1

    .line 2
    invoke-static {}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$Lambda$1;->lambdaFactory$()Ljava8/util/function/LongConsumer;

    move-result-object v0

    return-object v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public makeSpliterator(Ljava8/util/Spliterator$OfLong;JJJJ)Ljava8/util/Spliterator$OfLong;
    .locals 11

    .line 2
    new-instance v10, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava8/util/Spliterator$OfLong;JJJJ)V

    return-object v10
.end method

.method public bridge synthetic makeSpliterator(Ljava8/util/Spliterator;JJJJ)Ljava8/util/Spliterator;
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/Spliterator$OfLong;

    invoke-virtual/range {p0 .. p9}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong;->makeSpliterator(Ljava8/util/Spliterator$OfLong;JJJJ)Ljava8/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfLong;

    return-object v0
.end method
