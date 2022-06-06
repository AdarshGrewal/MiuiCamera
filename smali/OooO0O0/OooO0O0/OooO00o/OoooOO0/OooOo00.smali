.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooOo00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera2/vendortag/struct/MiviSuperNightData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/vendortag/struct/MiviSuperNightData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooOo00;->OooO00o:Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooOo00;->OooO00o:Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->OooO00o(Lcom/android/camera2/vendortag/struct/MiviSuperNightData;)V

    return-void
.end method
