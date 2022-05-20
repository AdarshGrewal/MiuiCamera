.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

.field private final synthetic OooO0O0:Lcom/android/camera/dualvideo/render/LayoutType;

.field private final synthetic OooO0OO:Landroid/graphics/Point;

.field private final synthetic OooO0Oo:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Lcom/android/camera/dualvideo/render/LayoutType;Landroid/graphics/Point;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOo;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOo;->OooO0O0:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p3, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOo;->OooO0OO:Landroid/graphics/Point;

    iput-boolean p4, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOo;->OooO0Oo:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOo;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOo;->OooO0O0:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v2, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOo;->OooO0OO:Landroid/graphics/Point;

    iget-boolean v3, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOo;->OooO0Oo:Z

    check-cast p1, Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Landroid/graphics/Point;ZLcom/android/camera/module/loader/camera2/FocusManager2;)V

    return-void
.end method
