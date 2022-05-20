.class public final Ljava8/util/function/LongUnaryOperators;
.super Ljava/lang/Object;
.source "LongUnaryOperators.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/function/LongUnaryOperator;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p0}, Ljava8/util/function/LongUnaryOperators$$Lambda$2;->lambdaFactory$(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/function/LongUnaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static compose(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/function/LongUnaryOperator;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p0, p1}, Ljava8/util/function/LongUnaryOperators$$Lambda$1;->lambdaFactory$(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/function/LongUnaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static identity()Ljava8/util/function/LongUnaryOperator;
    .locals 1

    .line 1
    invoke-static {}, Ljava8/util/function/LongUnaryOperators$$Lambda$3;->lambdaFactory$()Ljava8/util/function/LongUnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$andThen$124(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;J)J
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$compose$123(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;J)J
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$identity$125(J)J
    .locals 0

    return-wide p0
.end method
