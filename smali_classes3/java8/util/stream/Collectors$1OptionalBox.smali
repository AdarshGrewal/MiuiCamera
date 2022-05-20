.class public Ljava8/util/stream/Collectors$1OptionalBox;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/Collectors;->reducing(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OptionalBox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public present:Z

.field public final synthetic val$op:Ljava8/util/function/BinaryOperator;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava8/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->val$op:Ljava8/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->present:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ljava8/util/stream/Collectors$1OptionalBox;->val$op:Ljava8/util/function/BinaryOperator;

    iget-object v1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->present:Z

    :goto_0
    return-void
.end method
