.class public final Ljava8/util/stream/FindOps;
.super Ljava/lang/Object;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/FindOps$FindTask;,
        Ljava8/util/stream/FindOps$FindSink;,
        Ljava8/util/stream/FindOps$FindOp;
    }
.end annotation


# static fields
.field public static final ANY_DOUBLE:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava8/util/OptionalDouble;",
            ">;"
        }
    .end annotation
.end field

.field public static final ANY_INT:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava8/util/OptionalInt;",
            ">;"
        }
    .end annotation
.end field

.field public static final ANY_LONG:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava8/util/OptionalLong;",
            ">;"
        }
    .end annotation
.end field

.field public static final ANY_REF:Ljava8/util/stream/TerminalOp;

.field public static final DOUBLE_IS_PRESENT:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "Ljava8/util/OptionalDouble;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE_SINK_SUPP:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/TerminalSink<",
            "Ljava/lang/Double;",
            "Ljava8/util/OptionalDouble;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final FIRST_DOUBLE:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava8/util/OptionalDouble;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIRST_INT:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava8/util/OptionalInt;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIRST_LONG:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava8/util/OptionalLong;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIRST_REF:Ljava8/util/stream/TerminalOp;

.field public static final INT_IS_PRESENT:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "Ljava8/util/OptionalInt;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_SINK_SUPP:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/TerminalSink<",
            "Ljava/lang/Integer;",
            "Ljava8/util/OptionalInt;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final LONG_IS_PRESENT:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "Ljava8/util/OptionalLong;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_SINK_SUPP:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/TerminalSink<",
            "Ljava/lang/Long;",
            "Ljava8/util/OptionalLong;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final REF_IS_PRESENT:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "Ljava8/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final REF_SINK_SUPP:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/TerminalSink<",
            "Ljava/lang/Object;",
            "Ljava8/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$1;->lambdaFactory$()Ljava8/util/function/Predicate;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->REF_IS_PRESENT:Ljava8/util/function/Predicate;

    .line 2
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$2;->lambdaFactory$()Ljava8/util/function/Predicate;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->INT_IS_PRESENT:Ljava8/util/function/Predicate;

    .line 3
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$3;->lambdaFactory$()Ljava8/util/function/Predicate;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->LONG_IS_PRESENT:Ljava8/util/function/Predicate;

    .line 4
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$4;->lambdaFactory$()Ljava8/util/function/Predicate;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->DOUBLE_IS_PRESENT:Ljava8/util/function/Predicate;

    .line 5
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$5;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->REF_SINK_SUPP:Ljava8/util/function/Supplier;

    .line 6
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$6;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->INT_SINK_SUPP:Ljava8/util/function/Supplier;

    .line 7
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$7;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->LONG_SINK_SUPP:Ljava8/util/function/Supplier;

    .line 8
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$8;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->DOUBLE_SINK_SUPP:Ljava8/util/function/Supplier;

    .line 9
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    invoke-static {}, Ljava8/util/Optional;->empty()Ljava8/util/Optional;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/FindOps;->REF_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v6, Ljava8/util/stream/FindOps;->REF_SINK_SUPP:Ljava8/util/function/Supplier;

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->FIRST_REF:Ljava8/util/stream/TerminalOp;

    .line 10
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v9, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    invoke-static {}, Ljava8/util/Optional;->empty()Ljava8/util/Optional;

    move-result-object v10

    sget-object v11, Ljava8/util/stream/FindOps;->REF_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v12, Ljava8/util/stream/FindOps;->REF_SINK_SUPP:Ljava8/util/function/Supplier;

    const/4 v8, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->ANY_REF:Ljava8/util/stream/TerminalOp;

    .line 11
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v3, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    .line 12
    invoke-static {}, Ljava8/util/OptionalInt;->empty()Ljava8/util/OptionalInt;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/FindOps;->INT_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v6, Ljava8/util/stream/FindOps;->INT_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->FIRST_INT:Ljava8/util/stream/TerminalOp;

    .line 13
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v9, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    .line 14
    invoke-static {}, Ljava8/util/OptionalInt;->empty()Ljava8/util/OptionalInt;

    move-result-object v10

    sget-object v11, Ljava8/util/stream/FindOps;->INT_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v12, Ljava8/util/stream/FindOps;->INT_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->ANY_INT:Ljava8/util/stream/TerminalOp;

    .line 15
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    .line 16
    invoke-static {}, Ljava8/util/OptionalLong;->empty()Ljava8/util/OptionalLong;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/FindOps;->LONG_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v6, Ljava8/util/stream/FindOps;->LONG_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->FIRST_LONG:Ljava8/util/stream/TerminalOp;

    .line 17
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v9, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    .line 18
    invoke-static {}, Ljava8/util/OptionalLong;->empty()Ljava8/util/OptionalLong;

    move-result-object v10

    sget-object v11, Ljava8/util/stream/FindOps;->LONG_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v12, Ljava8/util/stream/FindOps;->LONG_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->ANY_LONG:Ljava8/util/stream/TerminalOp;

    .line 19
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v3, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    .line 20
    invoke-static {}, Ljava8/util/OptionalDouble;->empty()Ljava8/util/OptionalDouble;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/FindOps;->DOUBLE_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v6, Ljava8/util/stream/FindOps;->DOUBLE_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->FIRST_DOUBLE:Ljava8/util/stream/TerminalOp;

    .line 21
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v9, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    .line 22
    invoke-static {}, Ljava8/util/OptionalDouble;->empty()Ljava8/util/OptionalDouble;

    move-result-object v10

    sget-object v11, Ljava8/util/stream/FindOps;->DOUBLE_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v12, Ljava8/util/stream/FindOps;->DOUBLE_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->ANY_DOUBLE:Ljava8/util/stream/TerminalOp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Z)Ljava8/util/stream/TerminalOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava8/util/OptionalDouble;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Ljava8/util/stream/FindOps;->FIRST_DOUBLE:Ljava8/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava8/util/stream/FindOps;->ANY_DOUBLE:Ljava8/util/stream/TerminalOp;

    :goto_0
    return-object p0
.end method

.method public static makeInt(Z)Ljava8/util/stream/TerminalOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava8/util/OptionalInt;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Ljava8/util/stream/FindOps;->FIRST_INT:Ljava8/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava8/util/stream/FindOps;->ANY_INT:Ljava8/util/stream/TerminalOp;

    :goto_0
    return-object p0
.end method

.method public static makeLong(Z)Ljava8/util/stream/TerminalOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava8/util/OptionalLong;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Ljava8/util/stream/FindOps;->FIRST_LONG:Ljava8/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava8/util/stream/FindOps;->ANY_LONG:Ljava8/util/stream/TerminalOp;

    :goto_0
    return-object p0
.end method

.method public static makeRef(Z)Ljava8/util/stream/TerminalOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Ljava8/util/stream/TerminalOp<",
            "TT;",
            "Ljava8/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Ljava8/util/stream/FindOps;->FIRST_REF:Ljava8/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava8/util/stream/FindOps;->ANY_REF:Ljava8/util/stream/TerminalOp;

    :goto_0
    return-object p0
.end method
