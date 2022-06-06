.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;

.field private final synthetic OooO0O0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO/OooO00o;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO/OooO00o;->OooO0O0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO/OooO00o;->OooO00o:Ljava/lang/String;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO/OooO00o;->OooO0O0:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/android/camera/log/FileLogger;->OooO00o(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
