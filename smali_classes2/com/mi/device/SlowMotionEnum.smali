.class public final enum Lcom/mi/device/SlowMotionEnum;
.super Ljava/lang/Enum;
.source "SlowMotionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mi/device/SlowMotionEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO0O0:Lcom/mi/device/SlowMotionEnum;

.field public static final enum OooO0OO:Lcom/mi/device/SlowMotionEnum;

.field public static final enum OooO0Oo:Lcom/mi/device/SlowMotionEnum;

.field public static final enum OooO0o:Lcom/mi/device/SlowMotionEnum;

.field public static final enum OooO0o0:Lcom/mi/device/SlowMotionEnum;

.field public static final enum OooO0oO:Lcom/mi/device/SlowMotionEnum;

.field public static final synthetic OooO0oo:[Lcom/mi/device/SlowMotionEnum;


# instance fields
.field public OooO00o:S


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const/4 v1, 0x0

    const-string v2, "SLOW_UNSUPPORT"

    invoke-direct {v0, v2, v1, v1}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0O0:Lcom/mi/device/SlowMotionEnum;

    .line 2
    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const/4 v2, 0x1

    const-string v3, "SLOW_120_FPS"

    const/16 v4, 0x78

    invoke-direct {v0, v3, v2, v4}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0OO:Lcom/mi/device/SlowMotionEnum;

    .line 3
    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const/4 v3, 0x2

    const-string v4, "SLOW_240_FPS"

    const/16 v5, 0xf0

    invoke-direct {v0, v4, v3, v5}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0Oo:Lcom/mi/device/SlowMotionEnum;

    .line 4
    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const/4 v4, 0x3

    const-string v5, "SLOW_480_FPS"

    const/16 v6, 0x1e0

    invoke-direct {v0, v5, v4, v6}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0o0:Lcom/mi/device/SlowMotionEnum;

    .line 5
    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const/4 v5, 0x4

    const-string v6, "SLOW_960_FPS"

    const/16 v7, 0x3c0

    invoke-direct {v0, v6, v5, v7}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0o:Lcom/mi/device/SlowMotionEnum;

    .line 6
    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const/4 v6, 0x5

    const-string v7, "SLOW_1920_FPS"

    const/16 v8, 0x780

    invoke-direct {v0, v7, v6, v8}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0oO:Lcom/mi/device/SlowMotionEnum;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/mi/device/SlowMotionEnum;

    .line 7
    sget-object v8, Lcom/mi/device/SlowMotionEnum;->OooO0O0:Lcom/mi/device/SlowMotionEnum;

    aput-object v8, v7, v1

    sget-object v1, Lcom/mi/device/SlowMotionEnum;->OooO0OO:Lcom/mi/device/SlowMotionEnum;

    aput-object v1, v7, v2

    sget-object v1, Lcom/mi/device/SlowMotionEnum;->OooO0Oo:Lcom/mi/device/SlowMotionEnum;

    aput-object v1, v7, v3

    sget-object v1, Lcom/mi/device/SlowMotionEnum;->OooO0o0:Lcom/mi/device/SlowMotionEnum;

    aput-object v1, v7, v4

    sget-object v1, Lcom/mi/device/SlowMotionEnum;->OooO0o:Lcom/mi/device/SlowMotionEnum;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/mi/device/SlowMotionEnum;->OooO0oo:[Lcom/mi/device/SlowMotionEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2
    iput-short p1, p0, Lcom/mi/device/SlowMotionEnum;->OooO00o:S

    .line 3
    iput-short p3, p0, Lcom/mi/device/SlowMotionEnum;->OooO00o:S

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/device/SlowMotionEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/mi/device/SlowMotionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mi/device/SlowMotionEnum;

    return-object p0
.end method

.method public static values()[Lcom/mi/device/SlowMotionEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0oo:[Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {v0}, [Lcom/mi/device/SlowMotionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/device/SlowMotionEnum;

    return-object v0
.end method


# virtual methods
.method public OooO00o()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/mi/device/SlowMotionEnum;->OooO00o:S

    return v0
.end method
