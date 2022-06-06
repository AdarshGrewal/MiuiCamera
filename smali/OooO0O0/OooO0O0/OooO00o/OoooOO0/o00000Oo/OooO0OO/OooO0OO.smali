.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO0OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO0OO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO0OO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO0OO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->OooO00o(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
