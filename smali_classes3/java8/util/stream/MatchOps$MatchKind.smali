.class public final enum Ljava8/util/stream/MatchOps$MatchKind;
.super Ljava/lang/Enum;
.source "MatchOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava8/util/stream/MatchOps$MatchKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Ljava8/util/stream/MatchOps$MatchKind;

.field public static final enum ALL:Ljava8/util/stream/MatchOps$MatchKind;

.field public static final enum ANY:Ljava8/util/stream/MatchOps$MatchKind;

.field public static final enum NONE:Ljava8/util/stream/MatchOps$MatchKind;


# instance fields
.field public final shortCircuitResult:Z

.field public final stopOnPredicateMatches:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava8/util/stream/MatchOps$MatchKind;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ANY"

    invoke-direct {v0, v3, v2, v1, v1}, Ljava8/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ANY:Ljava8/util/stream/MatchOps$MatchKind;

    .line 2
    new-instance v0, Ljava8/util/stream/MatchOps$MatchKind;

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2, v2}, Ljava8/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ALL:Ljava8/util/stream/MatchOps$MatchKind;

    .line 3
    new-instance v0, Ljava8/util/stream/MatchOps$MatchKind;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3, v1, v2}, Ljava8/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljava8/util/stream/MatchOps$MatchKind;->NONE:Ljava8/util/stream/MatchOps$MatchKind;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava8/util/stream/MatchOps$MatchKind;

    .line 4
    sget-object v5, Ljava8/util/stream/MatchOps$MatchKind;->ANY:Ljava8/util/stream/MatchOps$MatchKind;

    aput-object v5, v4, v2

    sget-object v2, Ljava8/util/stream/MatchOps$MatchKind;->ALL:Ljava8/util/stream/MatchOps$MatchKind;

    aput-object v2, v4, v1

    aput-object v0, v4, v3

    sput-object v4, Ljava8/util/stream/MatchOps$MatchKind;->$VALUES:[Ljava8/util/stream/MatchOps$MatchKind;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Ljava8/util/stream/MatchOps$MatchKind;->stopOnPredicateMatches:Z

    .line 3
    iput-boolean p4, p0, Ljava8/util/stream/MatchOps$MatchKind;->shortCircuitResult:Z

    return-void
.end method

.method public static synthetic access$000(Ljava8/util/stream/MatchOps$MatchKind;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ljava8/util/stream/MatchOps$MatchKind;->stopOnPredicateMatches:Z

    return p0
.end method

.method public static synthetic access$100(Ljava8/util/stream/MatchOps$MatchKind;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ljava8/util/stream/MatchOps$MatchKind;->shortCircuitResult:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava8/util/stream/MatchOps$MatchKind;
    .locals 1

    .line 1
    const-class v0, Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/MatchOps$MatchKind;

    return-object p0
.end method

.method public static values()[Ljava8/util/stream/MatchOps$MatchKind;
    .locals 1

    .line 1
    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->$VALUES:[Ljava8/util/stream/MatchOps$MatchKind;

    invoke-virtual {v0}, [Ljava8/util/stream/MatchOps$MatchKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava8/util/stream/MatchOps$MatchKind;

    return-object v0
.end method
