.class public final enum Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/abtest/EnumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlowUnitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STATUS_DELETED:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

.field public static final enum STATUS_INVALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

.field public static final enum STATUS_VALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

.field public static final synthetic a:[Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    const/4 v1, 0x0

    const-string v2, "STATUS_VALID"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->STATUS_VALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    const/4 v2, 0x1

    const-string v3, "STATUS_INVALID"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->STATUS_INVALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    const/4 v3, 0x2

    const-string v4, "STATUS_DELETED"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->STATUS_DELETED:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    sget-object v5, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->STATUS_VALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->STATUS_INVALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->a:[Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;
    .locals 1

    const-class v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;
    .locals 1

    sget-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->a:[Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    return-object v0
.end method
