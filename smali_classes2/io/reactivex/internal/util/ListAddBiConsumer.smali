.class public final enum Lio/reactivex/internal/util/ListAddBiConsumer;
.super Ljava/lang/Enum;
.source "ListAddBiConsumer.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/util/ListAddBiConsumer;",
        ">;",
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/util/List;",
        "Ljava/lang/Object;",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/reactivex/internal/util/ListAddBiConsumer;

.field public static final enum INSTANCE:Lio/reactivex/internal/util/ListAddBiConsumer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/internal/util/ListAddBiConsumer;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lio/reactivex/internal/util/ListAddBiConsumer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/ListAddBiConsumer;->INSTANCE:Lio/reactivex/internal/util/ListAddBiConsumer;

    const/4 v2, 0x1

    new-array v2, v2, [Lio/reactivex/internal/util/ListAddBiConsumer;

    aput-object v0, v2, v1

    .line 2
    sput-object v2, Lio/reactivex/internal/util/ListAddBiConsumer;->$VALUES:[Lio/reactivex/internal/util/ListAddBiConsumer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static instance()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/functions/BiFunction<",
            "Ljava/util/List<",
            "TT;>;TT;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/util/ListAddBiConsumer;->INSTANCE:Lio/reactivex/internal/util/ListAddBiConsumer;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/ListAddBiConsumer;
    .locals 1

    .line 1
    const-class v0, Lio/reactivex/internal/util/ListAddBiConsumer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/util/ListAddBiConsumer;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/util/ListAddBiConsumer;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/internal/util/ListAddBiConsumer;->$VALUES:[Lio/reactivex/internal/util/ListAddBiConsumer;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/ListAddBiConsumer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/ListAddBiConsumer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/util/ListAddBiConsumer;->apply(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method