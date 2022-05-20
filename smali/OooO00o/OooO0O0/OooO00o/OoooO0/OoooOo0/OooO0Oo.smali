.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/data/data/ComponentData;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/data/ComponentData;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0Oo;->OooO00o:Lcom/android/camera/data/data/ComponentData;

    iput-boolean p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0Oo;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0Oo;->OooO00o:Lcom/android/camera/data/data/ComponentData;

    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0Oo;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-static {v0, v1, p1}, Lcom/android/camera/fragment/manually/FragmentManually;->OooO00o(Lcom/android/camera/data/data/ComponentData;ZLcom/android/camera/fragment/manually/FragmentManuallyExtra;)V

    return-void
.end method
