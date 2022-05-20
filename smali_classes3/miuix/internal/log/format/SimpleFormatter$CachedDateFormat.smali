.class public Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/log/format/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedDateFormat"
.end annotation


# static fields
.field public static final MILLISECONDS_RESERVE_OFFSET:I = 0x3

.field public static final MINUTE_IN_MILLISECONDS:I = 0xea60

.field public static final SECONDS_RESERVE_OFFSET:I = 0x6

.field public static final SECOND_IN_MILLISECONDS:I = 0x3e8


# instance fields
.field public iCache:Ljava/lang/StringBuilder;

.field public iCacheTime:J

.field public iCalendar:Ljava/util/Calendar;

.field public iMillisecondsSlot:J

.field public iSecondsSlot:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/internal/log/format/SimpleFormatter$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;-><init>()V

    return-void
.end method

.method private appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x30

    const/16 v2, 0xa

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-ge p2, v2, :cond_1

    const-string p3, "00"

    .line 2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p3, 0x64

    if-ge p2, p3, :cond_2

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-ge p2, v2, :cond_4

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    return-object p1
.end method

.method private buildCache(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    iget-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    iget-object p1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, p1, v1, v2}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object p1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-direct {p0, p1, p2, v2}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-direct {p0, p1, p2, v2}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object p1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object p1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-direct {p0, p1, p2, v2}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object p1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCalendar:Ljava/util/Calendar;

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/StringBuilder;J)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCacheTime:J

    cmp-long v0, p2, v0

    if-eqz v0, :cond_4

    .line 2
    iget-wide v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iSecondsSlot:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x3e8

    const-wide/32 v5, 0xea60

    if-eqz v2, :cond_3

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    add-long/2addr v0, v5

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-wide v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iMillisecondsSlot:J

    cmp-long v2, p2, v0

    const/4 v5, 0x3

    if-ltz v2, :cond_2

    add-long/2addr v3, v0

    cmp-long v2, p2, v3

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    sub-long v0, p2, v0

    long-to-int v0, v0

    .line 4
    iget-object v1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    iget-object v1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0, v5}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6
    :cond_2
    :goto_0
    iget-wide v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iSecondsSlot:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    .line 7
    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v2, v1, 0x3e8

    sub-int/2addr v0, v2

    .line 8
    iget-object v3, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9
    iget-object v3, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v1, v4}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0, v5}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->appendInt(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iSecondsSlot:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iMillisecondsSlot:J

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    invoke-direct {p0, p2, p3}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->buildCache(J)V

    .line 13
    div-long v0, p2, v5

    mul-long/2addr v0, v5

    iput-wide v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iSecondsSlot:J

    .line 14
    div-long v0, p2, v3

    mul-long/2addr v0, v3

    iput-wide v0, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iMillisecondsSlot:J

    .line 15
    :goto_2
    iput-wide p2, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCacheTime:J

    .line 16
    :cond_4
    iget-object p2, p0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->iCache:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method
