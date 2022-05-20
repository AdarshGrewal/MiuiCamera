.class public final synthetic LOooO00o/OooO0O0/OooO00o/Ooooo0o/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/scanner/MiScanner;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/scanner/MiScanner;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Ooooo0o/OooO0Oo;->OooO00o:Lcom/android/camera/scanner/MiScanner;

    iput-boolean p2, p0, LOooO00o/OooO0O0/OooO00o/Ooooo0o/OooO0Oo;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Ooooo0o/OooO0Oo;->OooO00o:Lcom/android/camera/scanner/MiScanner;

    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO00o/Ooooo0o/OooO0Oo;->OooO0O0:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/scanner/MiScanner;->OooO00o(ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method
