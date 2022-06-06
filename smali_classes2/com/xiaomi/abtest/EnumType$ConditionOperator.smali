.class public final enum Lcom/xiaomi/abtest/EnumType$ConditionOperator;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/abtest/EnumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConditionOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/abtest/EnumType$ConditionOperator;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OP_EQ:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

.field public static final enum OP_GE:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

.field public static final enum OP_GT:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

.field public static final enum OP_IN:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

.field public static final enum OP_LE:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

.field public static final enum OP_LT:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

.field public static final synthetic a:[Lcom/xiaomi/abtest/EnumType$ConditionOperator;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    const/4 v1, 0x0

    const-string v2, "OP_EQ"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/abtest/EnumType$ConditionOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_EQ:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    const/4 v2, 0x1

    const-string v3, "OP_GT"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/abtest/EnumType$ConditionOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_GT:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    const/4 v3, 0x2

    const-string v4, "OP_GE"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/abtest/EnumType$ConditionOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_GE:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    const/4 v4, 0x3

    const-string v5, "OP_LT"

    invoke-direct {v0, v5, v4}, Lcom/xiaomi/abtest/EnumType$ConditionOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_LT:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    const/4 v5, 0x4

    const-string v6, "OP_LE"

    invoke-direct {v0, v6, v5}, Lcom/xiaomi/abtest/EnumType$ConditionOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_LE:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    const/4 v6, 0x5

    const-string v7, "OP_IN"

    invoke-direct {v0, v7, v6}, Lcom/xiaomi/abtest/EnumType$ConditionOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_IN:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    sget-object v8, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_EQ:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    aput-object v8, v7, v1

    sget-object v1, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_GT:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    aput-object v1, v7, v2

    sget-object v1, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_GE:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    aput-object v1, v7, v3

    sget-object v1, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_LT:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    aput-object v1, v7, v4

    sget-object v1, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_LE:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->a:[Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/xiaomi/abtest/EnumType$ConditionOperator;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_IN:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    return-object p0

    :cond_1
    sget-object p0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_LE:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    return-object p0

    :cond_2
    sget-object p0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_LT:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    return-object p0

    :cond_3
    sget-object p0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_GE:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    return-object p0

    :cond_4
    sget-object p0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_GT:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    return-object p0

    :cond_5
    sget-object p0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_EQ:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$ConditionOperator;
    .locals 1

    const-class v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/abtest/EnumType$ConditionOperator;
    .locals 1

    sget-object v0, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->a:[Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    invoke-virtual {v0}, [Lcom/xiaomi/abtest/EnumType$ConditionOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    return-object v0
.end method
