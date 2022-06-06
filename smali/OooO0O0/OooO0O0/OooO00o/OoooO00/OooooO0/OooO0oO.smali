.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/OooooO0/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/vv/FragmentVVGallery;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooooO0/OooO0oO;->OooO00o:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooooO0/OooO0oO;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooooO0/OooO0oO;->OooO00o:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    iget-boolean v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooooO0/OooO0oO;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->OooO00o(ZLcom/android/camera/fragment/vv/VVList;)V

    return-void
.end method
