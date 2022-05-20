.class public final synthetic LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0OO;

    invoke-direct {v0}, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0OO;-><init>()V

    sput-object v0, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0OO;->OooO00o:LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0OO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraService;->OooO00o(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
