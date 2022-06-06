.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooOOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/Camera;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:Z

.field private final synthetic OooO0Oo:Z

.field private final synthetic OooO0o0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO00o:Lcom/android/camera/Camera;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO0O0:I

    iput-boolean p3, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO0OO:Z

    iput-boolean p4, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO0Oo:Z

    iput-boolean p5, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO0o0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO00o:Lcom/android/camera/Camera;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO0O0:I

    iget-boolean v2, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO0OO:Z

    iget-boolean v3, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO0Oo:Z

    iget-boolean v4, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO0o0:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/Camera;->OooO00o(IZZZ)V

    return-void
.end method
