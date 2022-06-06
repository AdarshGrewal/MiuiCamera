.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000oOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000oOo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000oOo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000oOo;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000oOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000oOo;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isPressedInGridWindow()Z

    move-result p1

    return p1
.end method
