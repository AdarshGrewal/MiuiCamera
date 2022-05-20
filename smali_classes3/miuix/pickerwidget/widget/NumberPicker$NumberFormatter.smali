.class public Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberFormatter"
.end annotation


# instance fields
.field public final iWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;->iWidth:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;->iWidth:I

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;->iWidth:I

    invoke-static {v0, p1}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
