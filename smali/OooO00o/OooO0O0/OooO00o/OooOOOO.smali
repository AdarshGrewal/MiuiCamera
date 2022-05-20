.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooOOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OooOOOO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OooOOOO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OooOOOO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OooOOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooOOOO;

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

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/OnScreenHint;->OooO00o(Landroid/view/View;)V

    return-void
.end method
