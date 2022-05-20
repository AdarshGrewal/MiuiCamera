.class public Ljava8/util/Spliterators$1Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava8/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public nextElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic val$spliterator:Ljava8/util/Spliterator;

.field public valueReady:Z


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ljava8/util/Spliterators$1Adapter;->val$spliterator:Ljava8/util/Spliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    .line 2
    iput-object p1, p0, Ljava8/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ljava8/util/Spliterators$1Adapter;->val$spliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava8/util/Spliterators$1Adapter;->hasNext()Z

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
    iput-boolean v0, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    .line 4
    iget-object v0, p0, Ljava8/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
