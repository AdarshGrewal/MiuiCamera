.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOo00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/ScreenHint;

.field private final synthetic OooO0O0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/ScreenHint;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOo00;->OooO00o:Lcom/android/camera/ui/ScreenHint;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOo00;->OooO0O0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOo00;->OooO00o:Lcom/android/camera/ui/ScreenHint;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOo00;->OooO0O0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenHint;->OooO00o(Ljava/lang/Runnable;)V

    return-void
.end method
