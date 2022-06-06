.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Ooooooo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/MiscTextureManager;

.field private final synthetic OooO0O0:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/MiscTextureManager;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Ooooooo;->OooO00o:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Ooooooo;->OooO0O0:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Ooooooo;->OooO00o:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Ooooooo;->OooO0O0:Landroid/content/res/Resources;

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->OooO00o(Landroid/content/res/Resources;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V

    return-void
.end method
