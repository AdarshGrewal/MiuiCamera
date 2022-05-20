.class public final Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;
.super Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Taking"
.end annotation


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator$OfLong;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Ljava8/util/Spliterator$OfLong;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    return-void
.end method

.method public constructor <init>(Ljava8/util/Spliterator$OfLong;ZLjava8/util/function/LongPredicate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Ljava8/util/Spliterator$OfLong;ZLjava8/util/function/LongPredicate;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-super {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public makeSpliterator(Ljava8/util/Spliterator$OfLong;)Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 2
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;

    invoke-direct {v0, p1, p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;-><init>(Ljava8/util/Spliterator$OfLong;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    return-object v0
.end method

.method public bridge synthetic makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/Spliterator$OfLong;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->makeSpliterator(Ljava8/util/Spliterator$OfLong;)Ljava8/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 4

    .line 2
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->checkCancelOnCount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfLong;

    .line 4
    invoke-interface {v0, p0}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava8/util/function/LongPredicate;

    iget-wide v2, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->t:J

    .line 5
    invoke-interface {v0, v2, v3}, Ljava8/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-wide v2, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->t:J

    invoke-interface {p1, v2, v3}, Ljava8/util/function/LongConsumer;->accept(J)V

    return v1

    :cond_0
    move v0, v1

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 3
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfLong;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
