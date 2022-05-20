.class public final synthetic LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oO;

    invoke-direct {v0}, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oO;-><init>()V

    sput-object v0, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oO;->OooO00o:LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->OooO00o(Ljava/util/Map$Entry;)Lcom/xiaomi/camera/core/CaptureData;

    move-result-object p1

    return-object p1
.end method
