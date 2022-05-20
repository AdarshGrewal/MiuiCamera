.class public Lcom/sensetime/stmobile/model/STRect;
.super Ljava/lang/Object;
.source "STRect.java"


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sensetime/stmobile/model/STRect;->left:I

    .line 3
    iput p2, p0, Lcom/sensetime/stmobile/model/STRect;->top:I

    .line 4
    iput p3, p0, Lcom/sensetime/stmobile/model/STRect;->right:I

    .line 5
    iput p4, p0, Lcom/sensetime/stmobile/model/STRect;->bottom:I

    return-void
.end method
