.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooO00o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooO00o;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooO00o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->animTopBlackCover()V

    return-void
.end method
