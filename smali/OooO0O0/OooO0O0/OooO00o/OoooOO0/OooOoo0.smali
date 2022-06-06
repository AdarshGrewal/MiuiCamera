.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooOoo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;

.field private final synthetic OooO0O0:Z

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooOoo0;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooOoo0;->OooO0O0:Z

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooOoo0;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooOoo0;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iget-boolean v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooOoo0;->OooO0O0:Z

    iget v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooOoo0;->OooO0OO:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/Camera2Module;->OooO00o(ZI)V

    return-void
.end method
