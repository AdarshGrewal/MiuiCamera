.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOOO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOOO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOOO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOOO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/android/camera/log/FileLogger;->OooO00o(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
