.class public Ljava8/util/Spliterators$4Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/PrimitiveIterator$OfDouble;
.implements Ljava8/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/PrimitiveIterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field public nextElement:D

.field public final synthetic val$spliterator:Ljava8/util/Spliterator$OfDouble;

.field public valueReady:Z


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator$OfDouble;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ljava8/util/Spliterators$4Adapter;->val$spliterator:Ljava8/util/Spliterator$OfDouble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ljava8/util/Spliterators$4Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ljava8/util/Spliterators$4Adapter;->valueReady:Z

    .line 2
    iput-wide p1, p0, Ljava8/util/Spliterators$4Adapter;->nextElement:D

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$4Adapter;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Ljava8/util/Iterators;->forEachRemaining(Ljava8/util/PrimitiveIterator$OfDouble;Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljava8/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ljava8/util/Spliterators$4Adapter;->val$spliterator:Ljava8/util/Spliterator$OfDouble;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Ljava8/util/Spliterators$4Adapter;->valueReady:Z

    return v0
.end method

.method public next()Ljava/lang/Double;
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava8/util/Spliterators$4Adapter;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/Spliterators$4Adapter;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public nextDouble()D
    .locals 2

    .line 1
    iget-boolean v0, p0, Ljava8/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava8/util/Spliterators$4Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ljava8/util/Spliterators$4Adapter;->valueReady:Z

    .line 4
    iget-wide v0, p0, Ljava8/util/Spliterators$4Adapter;->nextElement:D

    return-wide v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
