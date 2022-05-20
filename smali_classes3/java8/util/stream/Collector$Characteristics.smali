.class public final enum Ljava8/util/stream/Collector$Characteristics;
.super Ljava/lang/Enum;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Characteristics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava8/util/stream/Collector$Characteristics;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Ljava8/util/stream/Collector$Characteristics;

.field public static final enum CONCURRENT:Ljava8/util/stream/Collector$Characteristics;

.field public static final enum IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

.field public static final enum UNORDERED:Ljava8/util/stream/Collector$Characteristics;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava8/util/stream/Collector$Characteristics;

    const/4 v1, 0x0

    const-string v2, "CONCURRENT"

    invoke-direct {v0, v2, v1}, Ljava8/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/Collector$Characteristics;->CONCURRENT:Ljava8/util/stream/Collector$Characteristics;

    .line 2
    new-instance v0, Ljava8/util/stream/Collector$Characteristics;

    const/4 v2, 0x1

    const-string v3, "UNORDERED"

    invoke-direct {v0, v3, v2}, Ljava8/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/Collector$Characteristics;->UNORDERED:Ljava8/util/stream/Collector$Characteristics;

    .line 3
    new-instance v0, Ljava8/util/stream/Collector$Characteristics;

    const/4 v3, 0x2

    const-string v4, "IDENTITY_FINISH"

    invoke-direct {v0, v4, v3}, Ljava8/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava8/util/stream/Collector$Characteristics;

    .line 4
    sget-object v5, Ljava8/util/stream/Collector$Characteristics;->CONCURRENT:Ljava8/util/stream/Collector$Characteristics;

    aput-object v5, v4, v1

    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->UNORDERED:Ljava8/util/stream/Collector$Characteristics;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Ljava8/util/stream/Collector$Characteristics;->$VALUES:[Ljava8/util/stream/Collector$Characteristics;

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

.method public static valueOf(Ljava/lang/String;)Ljava8/util/stream/Collector$Characteristics;
    .locals 1

    .line 1
    const-class v0, Ljava8/util/stream/Collector$Characteristics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Collector$Characteristics;

    return-object p0
.end method

.method public static values()[Ljava8/util/stream/Collector$Characteristics;
    .locals 1

    .line 1
    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->$VALUES:[Ljava8/util/stream/Collector$Characteristics;

    invoke-virtual {v0}, [Ljava8/util/stream/Collector$Characteristics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava8/util/stream/Collector$Characteristics;

    return-object v0
.end method
