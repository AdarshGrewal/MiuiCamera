.class public final synthetic LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/renderengine/gl/GLThread;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:Landroid/opengl/EGLContext;

.field private final synthetic OooO0Oo:[I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/gl/GLThread;ILandroid/opengl/EGLContext;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;->OooO00o:Lcom/xiaomi/renderengine/gl/GLThread;

    iput p2, p0, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;->OooO0O0:I

    iput-object p3, p0, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;->OooO0OO:Landroid/opengl/EGLContext;

    iput-object p4, p0, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;->OooO0Oo:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;->OooO00o:Lcom/xiaomi/renderengine/gl/GLThread;

    iget v1, p0, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;->OooO0O0:I

    iget-object v2, p0, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;->OooO0OO:Landroid/opengl/EGLContext;

    iget-object v3, p0, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;->OooO0Oo:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/renderengine/gl/GLThread;->OooO00o(ILandroid/opengl/EGLContext;[I)V

    return-void
.end method
