.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0oO;->OooO00o:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0oO;->OooO00o:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->OooO00o(Landroid/util/SparseArray;Lcom/android/camera/dualvideo/recorder/MiRecorder;)V

    return-void
.end method
