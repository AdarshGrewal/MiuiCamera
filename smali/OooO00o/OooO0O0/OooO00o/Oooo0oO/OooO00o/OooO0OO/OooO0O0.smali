.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/util/UserSelectData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0O0;->OooO00o:Lcom/android/camera/dualvideo/util/UserSelectData;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0O0;->OooO00o:Lcom/android/camera/dualvideo/util/UserSelectData;

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {v0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->OooO0O0(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p1

    return p1
.end method
