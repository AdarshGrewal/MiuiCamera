.class public Lmiuix/internal/util/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/util/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/util/ViewDragHelper;


# direct methods
.method public constructor <init>(Lmiuix/internal/util/ViewDragHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/util/ViewDragHelper$2;->this$0:Lmiuix/internal/util/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper$2;->this$0:Lmiuix/internal/util/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    return-void
.end method
