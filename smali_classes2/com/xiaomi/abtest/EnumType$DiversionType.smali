.class public final enum Lcom/xiaomi/abtest/EnumType$DiversionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/abtest/EnumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiversionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/abtest/EnumType$DiversionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BY_RANDOM:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_SESSIONID:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_UNKNOWN:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_USERID:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_USERID_DAY:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_USERID_MONTH:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_USERID_WEEK:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final synthetic b:[Lcom/xiaomi/abtest/EnumType$DiversionType;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const/4 v1, 0x0

    const-string v2, "BY_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_UNKNOWN:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const/4 v2, 0x1

    const-string v3, "BY_USERID"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const/4 v3, 0x2

    const-string v4, "BY_SESSIONID"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_SESSIONID:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const/4 v4, 0x3

    const-string v5, "BY_USERID_DAY"

    invoke-direct {v0, v5, v4, v4}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_DAY:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const/4 v5, 0x4

    const-string v6, "BY_USERID_WEEK"

    invoke-direct {v0, v6, v5, v5}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_WEEK:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const/4 v6, 0x5

    const-string v7, "BY_USERID_MONTH"

    invoke-direct {v0, v7, v6, v6}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_MONTH:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const/4 v7, 0x6

    const-string v8, "BY_RANDOM"

    const/16 v9, 0x63

    invoke-direct {v0, v8, v7, v9}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_RANDOM:Lcom/xiaomi/abtest/EnumType$DiversionType;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/xiaomi/abtest/EnumType$DiversionType;

    sget-object v9, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_UNKNOWN:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v9, v8, v1

    sget-object v1, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v1, v8, v2

    sget-object v1, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_SESSIONID:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v1, v8, v3

    sget-object v1, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_DAY:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v1, v8, v4

    sget-object v1, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_WEEK:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v1, v8, v5

    sget-object v1, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_MONTH:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/xiaomi/abtest/EnumType$DiversionType;->b:[Lcom/xiaomi/abtest/EnumType$DiversionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/abtest/EnumType$DiversionType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$DiversionType;
    .locals 1

    const-class v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/abtest/EnumType$DiversionType;
    .locals 1

    sget-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->b:[Lcom/xiaomi/abtest/EnumType$DiversionType;

    invoke-virtual {v0}, [Lcom/xiaomi/abtest/EnumType$DiversionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/abtest/EnumType$DiversionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/abtest/EnumType$DiversionType;->a:I

    return v0
.end method
