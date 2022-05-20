.class public final enum Ljava8/util/stream/StreamOpFlag$Type;
.super Ljava/lang/Enum;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamOpFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava8/util/stream/StreamOpFlag$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Ljava8/util/stream/StreamOpFlag$Type;

.field public static final enum OP:Ljava8/util/stream/StreamOpFlag$Type;

.field public static final enum SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

.field public static final enum STREAM:Ljava8/util/stream/StreamOpFlag$Type;

.field public static final enum TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

.field public static final enum UPSTREAM_TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava8/util/stream/StreamOpFlag$Type;

    const/4 v1, 0x0

    const-string v2, "SPLITERATOR"

    invoke-direct {v0, v2, v1}, Ljava8/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

    .line 2
    new-instance v0, Ljava8/util/stream/StreamOpFlag$Type;

    const/4 v2, 0x1

    const-string v3, "STREAM"

    invoke-direct {v0, v3, v2}, Ljava8/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag$Type;->STREAM:Ljava8/util/stream/StreamOpFlag$Type;

    .line 3
    new-instance v0, Ljava8/util/stream/StreamOpFlag$Type;

    const/4 v3, 0x2

    const-string v4, "OP"

    invoke-direct {v0, v4, v3}, Ljava8/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag$Type;->OP:Ljava8/util/stream/StreamOpFlag$Type;

    .line 4
    new-instance v0, Ljava8/util/stream/StreamOpFlag$Type;

    const/4 v4, 0x3

    const-string v5, "TERMINAL_OP"

    invoke-direct {v0, v5, v4}, Ljava8/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    .line 5
    new-instance v0, Ljava8/util/stream/StreamOpFlag$Type;

    const/4 v5, 0x4

    const-string v6, "UPSTREAM_TERMINAL_OP"

    invoke-direct {v0, v6, v5}, Ljava8/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava8/util/stream/StreamOpFlag$Type;

    .line 6
    sget-object v7, Ljava8/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

    aput-object v7, v6, v1

    sget-object v1, Ljava8/util/stream/StreamOpFlag$Type;->STREAM:Ljava8/util/stream/StreamOpFlag$Type;

    aput-object v1, v6, v2

    sget-object v1, Ljava8/util/stream/StreamOpFlag$Type;->OP:Ljava8/util/stream/StreamOpFlag$Type;

    aput-object v1, v6, v3

    sget-object v1, Ljava8/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Ljava8/util/stream/StreamOpFlag$Type;->$VALUES:[Ljava8/util/stream/StreamOpFlag$Type;

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

.method public static valueOf(Ljava/lang/String;)Ljava8/util/stream/StreamOpFlag$Type;
    .locals 1

    .line 1
    const-class v0, Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/StreamOpFlag$Type;

    return-object p0
.end method

.method public static values()[Ljava8/util/stream/StreamOpFlag$Type;
    .locals 1

    .line 1
    sget-object v0, Ljava8/util/stream/StreamOpFlag$Type;->$VALUES:[Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v0}, [Ljava8/util/stream/StreamOpFlag$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava8/util/stream/StreamOpFlag$Type;

    return-object v0
.end method
