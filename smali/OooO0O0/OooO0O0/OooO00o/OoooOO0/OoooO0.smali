.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/DollyZoomModule;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:F

.field private final synthetic OooO0Oo:I

.field private final synthetic OooO0o0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;IFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;->OooO0O0:I

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;->OooO0OO:F

    iput p4, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;->OooO0Oo:I

    iput p5, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;->OooO0o0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;->OooO0O0:I

    iget v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;->OooO0OO:F

    iget v3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;->OooO0Oo:I

    iget v4, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OoooO0;->OooO0o0:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/module/DollyZoomModule;->OooO00o(IFII)V

    return-void
.end method
