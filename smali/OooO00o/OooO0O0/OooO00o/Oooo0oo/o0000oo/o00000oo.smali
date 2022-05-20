.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o00000oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o00000oo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o00000oo;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o00000oo;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o00000oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o00000oo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO0o(Lcom/android/camera/dualvideo/render/RenderSource;)Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method
