.class public Lcom/faceunity/pta_helper/a/a/a;
.super Ljava/lang/Object;
.source "Drawable2d.java"


# instance fields
.field public a:Ljava/nio/FloatBuffer;

.field public b:Ljava/nio/FloatBuffer;

.field public c:I


# direct methods
.method public constructor <init>([F[F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/faceunity/pta_helper/a/a/d;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/pta_helper/a/a/a;->b:Ljava/nio/FloatBuffer;

    .line 3
    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/faceunity/pta_helper/a/a/a;->c:I

    .line 4
    invoke-static {p2}, Lcom/faceunity/pta_helper/a/a/d;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/pta_helper/a/a/a;->a:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/FloatBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/a;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final b()Ljava/nio/FloatBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/a;->a:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/faceunity/pta_helper/a/a/a;->c:I

    return v0
.end method
