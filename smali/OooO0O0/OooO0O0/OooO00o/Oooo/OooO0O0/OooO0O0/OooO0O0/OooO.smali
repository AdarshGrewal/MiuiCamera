.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0O0/OooO0O0/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

.field private final synthetic OooO0O0:Ljava/nio/ByteBuffer;

.field private final synthetic OooO0OO:I

.field private final synthetic OooO0Oo:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Ljava/nio/ByteBuffer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0O0/OooO0O0/OooO;->OooO00o:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0O0/OooO0O0/OooO;->OooO0O0:Ljava/nio/ByteBuffer;

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0O0/OooO0O0/OooO;->OooO0OO:I

    iput p4, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0O0/OooO0O0/OooO;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0O0/OooO0O0/OooO;->OooO00o:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0O0/OooO0O0/OooO;->OooO0O0:Ljava/nio/ByteBuffer;

    iget v2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0O0/OooO0O0/OooO;->OooO0OO:I

    iget v3, p0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO0O0/OooO0O0/OooO;->OooO0Oo:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->OooO00o(Ljava/nio/ByteBuffer;II)V

    return-void
.end method
