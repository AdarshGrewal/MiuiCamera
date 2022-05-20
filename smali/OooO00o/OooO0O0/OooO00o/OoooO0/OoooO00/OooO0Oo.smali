.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0Oo;->OooO00o:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    iput p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0Oo;->OooO0O0:I

    iput-object p3, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0Oo;->OooO0OO:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0Oo;->OooO00o:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    iget v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0Oo;->OooO0O0:I

    iget-object v2, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0Oo;->OooO0OO:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->OooO00o(ILandroid/graphics/Bitmap;)V

    return-void
.end method
