.class public final Ljava8/util/function/IntConsumers;
.super Ljava/lang/Object;
.source "IntConsumers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Ljava8/util/function/IntConsumer;Ljava8/util/function/IntConsumer;)Ljava8/util/function/IntConsumer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p0, p1}, Ljava8/util/function/IntConsumers$$Lambda$1;->lambdaFactory$(Ljava8/util/function/IntConsumer;Ljava8/util/function/IntConsumer;)Ljava8/util/function/IntConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$andThen$129(Ljava8/util/function/IntConsumer;Ljava8/util/function/IntConsumer;I)V
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Ljava8/util/function/IntConsumer;->accept(I)V

    invoke-interface {p1, p2}, Ljava8/util/function/IntConsumer;->accept(I)V

    return-void
.end method
