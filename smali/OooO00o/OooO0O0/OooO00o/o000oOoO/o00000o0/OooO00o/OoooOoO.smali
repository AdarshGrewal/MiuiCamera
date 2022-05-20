.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOoO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOoO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOoO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOoO;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOoO;

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

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isBlockSnap()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
