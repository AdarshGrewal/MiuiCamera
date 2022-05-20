.class public final synthetic LOooO00o/OooO0o/OooO00o/OooO00o/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0o/OooO00o/OooO00o/OooO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0o/OooO00o/OooO00o/OooO;

    invoke-direct {v0}, LOooO00o/OooO0o/OooO00o/OooO00o/OooO;-><init>()V

    sput-object v0, LOooO00o/OooO0o/OooO00o/OooO00o/OooO;->OooO00o:LOooO00o/OooO0o/OooO00o/OooO00o/OooO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->OooO00o(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)Z

    move-result p1

    return p1
.end method
