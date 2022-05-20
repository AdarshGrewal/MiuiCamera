.class public final enum Lfz;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lfz;

.field public static final enum b:Lfz;

.field public static final enum c:Lfz;

.field public static final enum d:Lfz;

.field public static final enum e:Lfz;

.field public static final enum f:Lfz;

.field public static final enum g:Lfz;

.field public static final enum h:Lfz;

.field public static final enum i:Lfz;

.field public static final synthetic j:[Lfz;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lfz;

    const/4 v1, 0x0

    const-string v2, "INT"

    .line 1
    invoke-direct {v0, v2, v1}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->a:Lfz;

    new-instance v0, Lfz;

    const/4 v2, 0x1

    const-string v3, "LONG"

    .line 2
    invoke-direct {v0, v3, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->b:Lfz;

    new-instance v0, Lfz;

    const/4 v3, 0x2

    const-string v4, "FLOAT"

    .line 3
    invoke-direct {v0, v4, v3}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->c:Lfz;

    new-instance v0, Lfz;

    const/4 v4, 0x3

    const-string v5, "DOUBLE"

    .line 4
    invoke-direct {v0, v5, v4}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->d:Lfz;

    new-instance v0, Lfz;

    const/4 v5, 0x4

    const-string v6, "BOOLEAN"

    .line 5
    invoke-direct {v0, v6, v5}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->e:Lfz;

    new-instance v0, Lfz;

    const/4 v6, 0x5

    const-string v7, "STRING"

    .line 6
    invoke-direct {v0, v7, v6}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->f:Lfz;

    new-instance v0, Lfz;

    .line 7
    sget-object v7, Lck;->b:Lck;

    const/4 v7, 0x6

    const-string v8, "BYTE_STRING"

    invoke-direct {v0, v8, v7}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->g:Lfz;

    new-instance v0, Lfz;

    const/4 v8, 0x7

    const-string v9, "ENUM"

    .line 8
    invoke-direct {v0, v9, v8}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->h:Lfz;

    new-instance v0, Lfz;

    const/16 v9, 0x8

    const-string v10, "MESSAGE"

    .line 9
    invoke-direct {v0, v10, v9}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->i:Lfz;

    const/16 v10, 0x9

    new-array v10, v10, [Lfz;

    sget-object v11, Lfz;->a:Lfz;

    aput-object v11, v10, v1

    sget-object v1, Lfz;->b:Lfz;

    aput-object v1, v10, v2

    sget-object v1, Lfz;->c:Lfz;

    aput-object v1, v10, v3

    sget-object v1, Lfz;->d:Lfz;

    aput-object v1, v10, v4

    sget-object v1, Lfz;->e:Lfz;

    aput-object v1, v10, v5

    sget-object v1, Lfz;->f:Lfz;

    aput-object v1, v10, v6

    sget-object v1, Lfz;->g:Lfz;

    aput-object v1, v10, v7

    sget-object v1, Lfz;->h:Lfz;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lfz;->j:[Lfz;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfz;
    .locals 1

    sget-object v0, Lfz;->j:[Lfz;

    .line 1
    invoke-virtual {v0}, [Lfz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfz;

    return-object v0
.end method
