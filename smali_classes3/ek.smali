.class public final Lek;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Les;


# static fields
.field public static final a:[I

.field public static final b:Lsun/misc/Unsafe;


# instance fields
.field public final c:[I

.field public final d:[Ljava/lang/Object;

.field public final e:I

.field public final f:I

.field public final g:Leh;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:[I

.field public final l:I

.field public final m:I

.field public final n:Ldv;

.field public final o:Lfh;

.field public final p:Lej;

.field public final q:Lfs;

.field public final r:Lff;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lek;->a:[I

    .line 2
    invoke-static {}, Lfr;->OooO00o()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lek;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILeh;ZZ[IIILfs;Ldv;Lfh;Lej;Lff;[B)V
    .locals 4

    move-object v0, p0

    move-object/from16 v1, p14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lek;->c:[I

    move-object v2, p2

    iput-object v2, v0, Lek;->d:[Ljava/lang/Object;

    move v2, p3

    iput v2, v0, Lek;->e:I

    move v2, p4

    iput v2, v0, Lek;->f:I

    move v2, p6

    iput-boolean v2, v0, Lek;->i:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p5}, Lej;->OooO00o(Leh;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, v0, Lek;->h:Z

    iput-boolean v2, v0, Lek;->j:Z

    move-object v2, p8

    iput-object v2, v0, Lek;->k:[I

    move v2, p9

    iput v2, v0, Lek;->l:I

    move v2, p10

    iput v2, v0, Lek;->m:I

    move-object v2, p11

    iput-object v2, v0, Lek;->q:Lfs;

    move-object/from16 v2, p12

    iput-object v2, v0, Lek;->n:Ldv;

    move-object/from16 v2, p13

    iput-object v2, v0, Lek;->o:Lfh;

    iput-object v1, v0, Lek;->p:Lej;

    move-object v1, p5

    iput-object v1, v0, Lek;->g:Leh;

    move-object/from16 v1, p15

    iput-object v1, v0, Lek;->r:Lff;

    return-void
.end method

.method private final OooO(I)I
    .locals 1

    iget v0, p0, Lek;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lek;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final OooO00o(II)I
    .locals 1

    iget v0, p0, Lek;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lek;->f:I

    if-gt p1, v0, :cond_0

    .line 484
    invoke-direct {p0, p1, p2}, Lek;->OooO0O0(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public static final OooO00o(Lfh;Ljava/lang/Object;)I
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lfh;->OooO0Oo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final OooO00o(Ljava/lang/Object;[BIIIIIIIJILby;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lek;->b:Lsun/misc/Unsafe;

    iget-object v7, v0, Lek;->c:[I

    add-int/lit8 v13, v6, 0x2

    .line 219
    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_13

    .line 220
    invoke-direct {v0, v6}, Lek;->OooO00o(I)Les;

    move-result-object v5

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 221
    invoke-static/range {v2 .. v7}, Leb;->OooO00o(Les;[BIIILby;)I

    move-result v2

    .line 222
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 223
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_1

    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 224
    invoke-static {v15, v3}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 225
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 226
    :cond_1
    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 227
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 228
    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_1
    if-eqz v5, :cond_2

    goto/16 :goto_9

    .line 229
    :cond_2
    invoke-static {v3, v4, v11}, Leb;->OooO0O0([BILby;)I

    move-result v2

    iget-wide v3, v11, Lby;->b:J

    .line 230
    invoke-static {v3, v4}, Lcl;->OooO00o(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_2
    if-eqz v5, :cond_3

    goto/16 :goto_9

    .line 232
    :cond_3
    invoke-static {v3, v4, v11}, Leb;->OooO00o([BILby;)I

    move-result v2

    iget v3, v11, Lby;->a:I

    .line 233
    invoke-static {v3}, Lcl;->OooO00o(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 234
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    if-nez v5, :cond_13

    .line 235
    invoke-static {v3, v4, v11}, Leb;->OooO00o([BILby;)I

    move-result v3

    iget v4, v11, Lby;->a:I

    .line 236
    invoke-direct {v0, v6}, Lek;->OooO0OO(I)Ldh;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 237
    invoke-interface {v5, v4}, Ldh;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 238
    :cond_4
    invoke-static/range {p1 .. p1}, Lek;->OooO0Oo(Ljava/lang/Object;)Lfi;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lfi;->OooO00o(ILjava/lang/Object;)V

    goto :goto_3

    .line 239
    :cond_5
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 240
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3
    move v2, v3

    goto/16 :goto_a

    :pswitch_4
    if-eq v5, v15, :cond_6

    goto/16 :goto_9

    .line 241
    :cond_6
    invoke-static {v3, v4, v11}, Leb;->OooO0o0([BILby;)I

    move-result v2

    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 242
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 243
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    if-ne v5, v15, :cond_13

    .line 244
    invoke-direct {v0, v6}, Lek;->OooO00o(I)Les;

    move-result-object v2

    move/from16 v5, p4

    .line 245
    invoke-static {v2, v3, v4, v5, v11}, Leb;->OooO00o(Les;[BIILby;)I

    move-result v2

    .line 246
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 247
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_8

    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 248
    invoke-static {v15, v3}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 249
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 250
    :cond_8
    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 251
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 252
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_13

    .line 253
    invoke-static {v3, v4, v11}, Leb;->OooO00o([BILby;)I

    move-result v2

    iget v4, v11, Lby;->a:I

    if-nez v4, :cond_9

    const-string v3, ""

    .line 254
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_9
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-nez v5, :cond_a

    goto :goto_6

    :cond_a
    add-int v5, v2, v4

    .line 255
    invoke-static {v3, v2, v5}, Lfx;->OooO00o([BII)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 256
    :goto_6
    new-instance v5, Ljava/lang/String;

    .line 257
    sget-object v6, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 258
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 259
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    .line 260
    :cond_b
    invoke-static {}, Ldl;->OooO0o()Ldl;

    move-result-object v1

    throw v1

    :pswitch_7
    if-nez v5, :cond_13

    .line 261
    invoke-static {v3, v4, v11}, Leb;->OooO0O0([BILby;)I

    move-result v2

    iget-wide v3, v11, Lby;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    const/4 v15, 0x1

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    .line 262
    :goto_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 263
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    if-eq v5, v7, :cond_d

    goto/16 :goto_9

    .line 264
    :cond_d
    invoke-static/range {p2 .. p3}, Leb;->OooO00o([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 265
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_9
    const/4 v2, 0x1

    if-eq v5, v2, :cond_e

    goto :goto_9

    .line 266
    :cond_e
    invoke-static/range {p2 .. p3}, Leb;->OooO0O0([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 267
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :pswitch_a
    if-eqz v5, :cond_f

    goto :goto_9

    .line 268
    :cond_f
    invoke-static {v3, v4, v11}, Leb;->OooO00o([BILby;)I

    move-result v2

    iget v3, v11, Lby;->a:I

    .line 269
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 270
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    if-eqz v5, :cond_10

    goto :goto_9

    .line 271
    :cond_10
    invoke-static {v3, v4, v11}, Leb;->OooO0O0([BILby;)I

    move-result v2

    iget-wide v3, v11, Lby;->b:J

    .line 272
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 273
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    if-eq v5, v7, :cond_11

    goto :goto_9

    .line 274
    :cond_11
    invoke-static/range {p2 .. p3}, Leb;->OooO0Oo([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 275
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_d
    const/4 v2, 0x1

    if-eq v5, v2, :cond_12

    goto :goto_9

    .line 276
    :cond_12
    invoke-static/range {p2 .. p3}, Leb;->OooO0OO([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 277
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :cond_13
    :goto_9
    move v2, v4

    :goto_a
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final OooO00o(Ljava/lang/Object;[BIIIIIIJIJLby;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lek;->b:Lsun/misc/Unsafe;

    .line 372
    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 373
    check-cast v11, Ldi;

    .line 374
    invoke-interface {v11}, Ldi;->a()Z

    move-result v12

    if-nez v12, :cond_1

    .line 375
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_0

    add-int/2addr v12, v12

    goto :goto_0

    :cond_0
    const/16 v12, 0xa

    .line 376
    :goto_0
    invoke-interface {v11, v12}, Ldi;->a(I)Ldi;

    move-result-object v11

    sget-object v12, Lek;->b:Lsun/misc/Unsafe;

    .line 377
    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_2d

    .line 378
    invoke-direct {p0, v8}, Lek;->OooO00o(I)Les;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 379
    invoke-static/range {p6 .. p11}, Leb;->OooO00o(Les;[BIIILby;)I

    move-result v4

    iget-object v8, v7, Lby;->c:Ljava/lang/Object;

    .line 380
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :pswitch_0
    if-ne v6, v14, :cond_2

    .line 381
    invoke-static {v3, v4, v11, v7}, Leb;->OooO([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_15

    :cond_2
    if-nez v6, :cond_2d

    .line 382
    check-cast v11, Ldw;

    .line 383
    invoke-static {v3, v4, v7}, Leb;->OooO0O0([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    .line 384
    invoke-static {v8, v9}, Lcl;->OooO00o(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ldw;->OooO00o(J)V

    :goto_1
    if-ge v1, v5, :cond_3

    .line 385
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_3

    .line 386
    invoke-static {v3, v4, v7}, Leb;->OooO0O0([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    .line 387
    invoke-static {v8, v9}, Lcl;->OooO00o(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ldw;->OooO00o(J)V

    goto :goto_1

    :cond_3
    return v1

    :pswitch_1
    if-ne v6, v14, :cond_4

    .line 388
    invoke-static {v3, v4, v11, v7}, Leb;->OooO0oo([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_15

    :cond_4
    if-nez v6, :cond_2d

    .line 389
    check-cast v11, Ldf;

    .line 390
    invoke-static {v3, v4, v7}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    .line 391
    invoke-static {v4}, Lcl;->OooO00o(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ldf;->OooO00o(I)V

    :goto_2
    if-ge v1, v5, :cond_5

    .line 392
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_5

    .line 393
    invoke-static {v3, v4, v7}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    .line 394
    invoke-static {v4}, Lcl;->OooO00o(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ldf;->OooO00o(I)V

    goto :goto_2

    :cond_5
    return v1

    :pswitch_2
    if-ne v6, v14, :cond_6

    .line 395
    invoke-static {v3, v4, v11, v7}, Leb;->OooO00o([BILdi;Lby;)I

    move-result v2

    goto :goto_3

    :cond_6
    if-nez v6, :cond_2d

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 396
    invoke-static/range {v2 .. v7}, Leb;->OooO00o(I[BIILdi;Lby;)I

    move-result v2

    .line 397
    :goto_3
    check-cast v1, Lde;

    iget-object v3, v1, Lde;->h:Lfi;

    .line 398
    sget-object v4, Lfi;->a:Lfi;

    if-eq v3, v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    .line 399
    :goto_4
    invoke-direct {p0, v8}, Lek;->OooO0OO(I)Ldh;

    move-result-object v4

    iget-object v5, v0, Lek;->o:Lfh;

    move/from16 v6, p6

    .line 400
    invoke-static {v6, v11, v4, v3, v5}, Leu;->OooO00o(ILjava/util/List;Ldh;Ljava/lang/Object;Lfh;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfi;

    if-nez v3, :cond_8

    move v1, v2

    goto/16 :goto_15

    :cond_8
    iput-object v3, v1, Lde;->h:Lfi;

    return v2

    :pswitch_3
    if-ne v6, v14, :cond_2d

    .line 401
    invoke-static {v3, v4, v7}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_f

    .line 402
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_e

    if-eqz v4, :cond_9

    .line 403
    invoke-static {v3, v1, v4}, Lck;->OooO00o([BII)Lck;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/2addr v1, v4

    goto :goto_6

    .line 404
    :cond_9
    sget-object v4, Lck;->b:Lck;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    if-ge v1, v5, :cond_d

    .line 405
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_d

    .line 406
    invoke-static {v3, v4, v7}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_c

    .line 407
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_b

    if-eqz v4, :cond_a

    .line 408
    invoke-static {v3, v1, v4}, Lck;->OooO00o([BII)Lck;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    sget-object v4, Lck;->b:Lck;

    .line 409
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 410
    :cond_b
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object v1

    throw v1

    .line 411
    :cond_c
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v1

    throw v1

    :cond_d
    return v1

    .line 412
    :cond_e
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object v1

    throw v1

    .line 413
    :cond_f
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v1

    throw v1

    :pswitch_4
    if-eq v6, v14, :cond_10

    goto/16 :goto_14

    .line 414
    :cond_10
    invoke-direct {p0, v8}, Lek;->OooO00o(I)Les;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 415
    invoke-static/range {p6 .. p12}, Leb;->OooO00o(Les;I[BIILdi;Lby;)I

    move-result v1

    return v1

    :pswitch_5
    if-ne v6, v14, :cond_2d

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    cmp-long v1, v8, v12

    const-string v6, ""

    if-eqz v1, :cond_17

    .line 416
    invoke-static {v3, v4, v7}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_16

    if-nez v4, :cond_11

    .line 417
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    add-int v8, v1, v4

    .line 418
    invoke-static {v3, v1, v8}, Lfx;->OooO00o([BII)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 419
    new-instance v9, Ljava/lang/String;

    .line 420
    sget-object v10, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 421
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    move v1, v8

    :goto_8
    if-ge v1, v5, :cond_2e

    .line 422
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v8, v7, Lby;->a:I

    if-ne v2, v8, :cond_2e

    .line 423
    invoke-static {v3, v4, v7}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_14

    if-nez v4, :cond_12

    .line 424
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    add-int v8, v1, v4

    .line 425
    invoke-static {v3, v1, v8}, Lfx;->OooO00o([BII)Z

    move-result v9

    if-eqz v9, :cond_13

    new-instance v9, Ljava/lang/String;

    .line 426
    sget-object v10, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 427
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 428
    :cond_13
    invoke-static {}, Ldl;->OooO0o()Ldl;

    move-result-object v1

    throw v1

    .line 429
    :cond_14
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v1

    throw v1

    .line 430
    :cond_15
    invoke-static {}, Ldl;->OooO0o()Ldl;

    move-result-object v1

    throw v1

    .line 431
    :cond_16
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v1

    throw v1

    .line 432
    :cond_17
    invoke-static {v3, v4, v7}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_1b

    if-eqz v4, :cond_18

    .line 433
    new-instance v8, Ljava/lang/String;

    .line 434
    sget-object v9, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 435
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/2addr v1, v4

    goto :goto_a

    .line 436
    :cond_18
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    if-ge v1, v5, :cond_2e

    .line 437
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v8, v7, Lby;->a:I

    if-ne v2, v8, :cond_2e

    .line 438
    invoke-static {v3, v4, v7}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_1a

    if-eqz v4, :cond_19

    .line 439
    new-instance v8, Ljava/lang/String;

    .line 440
    sget-object v9, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 441
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 442
    :cond_19
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 443
    :cond_1a
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v1

    throw v1

    .line 444
    :cond_1b
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object v1

    throw v1

    :pswitch_6
    if-ne v6, v14, :cond_1c

    .line 445
    invoke-static {v3, v4, v11, v7}, Leb;->OooO0oO([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_15

    :cond_1c
    if-nez v6, :cond_2d

    .line 446
    check-cast v11, Lca;

    .line 447
    invoke-static {v3, v4, v7}, Leb;->OooO0O0([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    cmp-long v4, v8, v12

    const/4 v6, 0x0

    if-eqz v4, :cond_1d

    move v4, v10

    goto :goto_b

    :cond_1d
    move v4, v6

    .line 448
    :goto_b
    invoke-virtual {v11, v4}, Lca;->OooO00o(Z)V

    :goto_c
    if-ge v1, v5, :cond_1f

    .line 449
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v8, v7, Lby;->a:I

    if-ne v2, v8, :cond_1f

    .line 450
    invoke-static {v3, v4, v7}, Leb;->OooO0O0([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    cmp-long v4, v8, v12

    if-eqz v4, :cond_1e

    move v4, v10

    goto :goto_d

    :cond_1e
    move v4, v6

    .line 451
    :goto_d
    invoke-virtual {v11, v4}, Lca;->OooO00o(Z)V

    goto :goto_c

    :cond_1f
    return v1

    :pswitch_7
    if-ne v6, v14, :cond_20

    .line 452
    invoke-static {v3, v4, v11, v7}, Leb;->OooO0OO([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_15

    :cond_20
    if-ne v6, v9, :cond_2d

    .line 453
    check-cast v11, Ldf;

    .line 454
    invoke-static/range {p2 .. p3}, Leb;->OooO00o([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Ldf;->OooO00o(I)V

    :goto_e
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_21

    .line 455
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_21

    .line 456
    invoke-static {v3, v4}, Leb;->OooO00o([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Ldf;->OooO00o(I)V

    goto :goto_e

    :cond_21
    return v1

    :pswitch_8
    if-ne v6, v14, :cond_22

    .line 457
    invoke-static {v3, v4, v11, v7}, Leb;->OooO0Oo([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_15

    :cond_22
    if-ne v6, v10, :cond_2d

    .line 458
    check-cast v11, Ldw;

    .line 459
    invoke-static/range {p2 .. p3}, Leb;->OooO0O0([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ldw;->OooO00o(J)V

    :goto_f
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_23

    .line 460
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_23

    .line 461
    invoke-static {v3, v4}, Leb;->OooO0O0([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ldw;->OooO00o(J)V

    goto :goto_f

    :cond_23
    return v1

    :pswitch_9
    if-ne v6, v14, :cond_24

    .line 462
    invoke-static {v3, v4, v11, v7}, Leb;->OooO00o([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_15

    :cond_24
    if-eqz v6, :cond_25

    goto/16 :goto_14

    :cond_25
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 463
    invoke-static/range {p5 .. p10}, Leb;->OooO00o(I[BIILdi;Lby;)I

    move-result v1

    return v1

    :pswitch_a
    if-ne v6, v14, :cond_26

    .line 464
    invoke-static {v3, v4, v11, v7}, Leb;->OooO0O0([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_15

    :cond_26
    if-nez v6, :cond_2d

    .line 465
    check-cast v11, Ldw;

    .line 466
    invoke-static {v3, v4, v7}, Leb;->OooO0O0([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    .line 467
    invoke-virtual {v11, v8, v9}, Ldw;->OooO00o(J)V

    :goto_10
    if-ge v1, v5, :cond_27

    .line 468
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_27

    .line 469
    invoke-static {v3, v4, v7}, Leb;->OooO0O0([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    .line 470
    invoke-virtual {v11, v8, v9}, Ldw;->OooO00o(J)V

    goto :goto_10

    :cond_27
    return v1

    :pswitch_b
    if-ne v6, v14, :cond_28

    .line 471
    invoke-static {v3, v4, v11, v7}, Leb;->OooO0o0([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_15

    :cond_28
    if-ne v6, v9, :cond_2d

    .line 472
    check-cast v11, Lcx;

    .line 473
    invoke-static/range {p2 .. p3}, Leb;->OooO0Oo([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcx;->OooO00o(F)V

    :goto_11
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_29

    .line 474
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_29

    .line 475
    invoke-static {v3, v4}, Leb;->OooO0Oo([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcx;->OooO00o(F)V

    goto :goto_11

    :cond_29
    return v1

    :pswitch_c
    if-ne v6, v14, :cond_2a

    .line 476
    invoke-static {v3, v4, v11, v7}, Leb;->OooO0o([BILdi;Lby;)I

    move-result v1

    goto :goto_15

    :cond_2a
    if-ne v6, v10, :cond_2d

    .line 477
    check-cast v11, Lcp;

    .line 478
    invoke-static/range {p2 .. p3}, Leb;->OooO0OO([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcp;->OooO00o(D)V

    :goto_12
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_2b

    .line 479
    invoke-static {v3, v1, v7}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_2b

    .line 480
    invoke-static {v3, v4}, Leb;->OooO0OO([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcp;->OooO00o(D)V

    goto :goto_12

    :cond_2b
    return v1

    :goto_13
    if-ge v4, v5, :cond_2c

    .line 481
    invoke-static {v3, v4, v7}, Leb;->OooO00o([BILby;)I

    move-result v8

    iget v9, v7, Lby;->a:I

    if-ne v2, v9, :cond_2c

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 482
    invoke-static/range {p6 .. p11}, Leb;->OooO00o(Les;[BIIILby;)I

    move-result v4

    iget-object v8, v7, Lby;->c:Ljava/lang/Object;

    .line 483
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2c
    return v4

    :cond_2d
    :goto_14
    move v1, v4

    :cond_2e
    :goto_15
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final OooO00o(Ljava/lang/Object;[BIIIJLby;)I
    .locals 3

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    .line 200
    invoke-direct {p0, p5}, Lek;->OooO0O0(I)Ljava/lang/Object;

    move-result-object p5

    .line 201
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 202
    invoke-static {v1}, Lff;->OooO0Oo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-static {}, Lff;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    .line 204
    invoke-static {v2, v1}, Lff;->OooO0O0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 206
    :cond_0
    invoke-static {p5}, Lff;->OooO0O0(Ljava/lang/Object;)Lea;

    move-result-object p1

    .line 207
    invoke-static {v1}, Lff;->OooO0OO(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 208
    invoke-static {p2, p3, p8}, Leb;->OooO00o([BILby;)I

    move-result p3

    iget p6, p8, Lby;->a:I

    if-ltz p6, :cond_6

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_6

    add-int/2addr p6, p3

    .line 209
    iget-object p7, p1, Lea;->b:Ljava/lang/Object;

    .line 210
    iget-object p7, p1, Lea;->d:Ljava/lang/Object;

    :goto_0
    const/4 p7, 0x0

    if-ge p3, p6, :cond_4

    add-int/lit8 v0, p3, 0x1

    .line 211
    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    .line 212
    invoke-static {p3, p2, v0, p8}, Leb;->OooO00o(I[BILby;)I

    move-result v0

    iget p3, p8, Lby;->a:I

    :cond_1
    ushr-int/lit8 v1, p3, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 213
    invoke-static {p3, p2, v0, p4, p8}, Leb;->OooO00o(I[BIILby;)I

    move-result p3

    goto :goto_0

    .line 214
    :cond_2
    iget-object p1, p1, Lea;->c:Lfy;

    throw p7

    .line 215
    :cond_3
    iget-object p1, p1, Lea;->a:Lfy;

    throw p7

    :cond_4
    if-ne p3, p6, :cond_5

    .line 216
    invoke-interface {p5, p7, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    .line 217
    :cond_5
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object p1

    throw p1

    .line 218
    :cond_6
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p1

    throw p1
.end method

.method public static OooO00o(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;
    .locals 7

    .line 123
    instance-of v0, p0, Ler;

    if-eqz v0, :cond_0

    .line 124
    move-object v1, p0

    check-cast v1, Ler;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lek;->OooO00o(Ler;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object p0

    return-object p0

    .line 125
    :cond_0
    check-cast p0, Lfd;

    const/4 p0, 0x0

    throw p0
.end method

.method public static OooO00o(Ler;Lfs;Ldv;Lfh;Lej;Lff;)Lek;
    .locals 35

    move-object/from16 v0, p0

    .line 126
    invoke-virtual/range {p0 .. p0}, Ler;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v2

    :goto_0
    iget-object v1, v0, Ler;->b:Ljava/lang/String;

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-ge v5, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v6, :cond_35

    :goto_2
    add-int/lit8 v5, v7, 0x1

    .line 130
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v5, 0x1

    .line 131
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_3

    :cond_2
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lek;->a:[I

    move v9, v2

    move v10, v9

    move v12, v10

    move v13, v12

    move v15, v13

    move-object v14, v7

    move v7, v15

    goto/16 :goto_c

    :cond_4
    add-int/lit8 v7, v5, 0x1

    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_6

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    .line 133
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_4

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 134
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 135
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_5

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 136
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v10, 0x1

    .line 137
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_6

    :cond_9
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_a
    add-int/lit8 v12, v10, 0x1

    .line 138
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 139
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_b
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_c
    add-int/lit8 v13, v12, 0x1

    .line 140
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 141
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_d
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_e
    add-int/lit8 v14, v13, 0x1

    .line 142
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 143
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_f
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_10
    add-int/lit8 v15, v14, 0x1

    .line 144
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 145
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_11

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_11
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_12
    add-int/lit8 v16, v15, 0x1

    .line 146
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v18, v2, 0x1

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_13

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v18

    goto :goto_b

    :cond_13
    shl-int v2, v2, v16

    or-int/2addr v15, v2

    move/from16 v16, v18

    :cond_14
    add-int v2, v15, v13

    add-int/2addr v2, v14

    .line 148
    new-array v2, v2, [I

    add-int v14, v5, v5

    add-int/2addr v14, v7

    move v7, v13

    move v13, v10

    move v10, v14

    move-object v14, v2

    move v2, v5

    move/from16 v5, v16

    .line 149
    :goto_c
    sget-object v8, Lek;->b:Lsun/misc/Unsafe;

    iget-object v3, v0, Ler;->c:[Ljava/lang/Object;

    iget-object v6, v0, Ler;->a:Leh;

    .line 150
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v20, v5

    mul-int/lit8 v5, v12, 0x3

    .line 151
    new-array v5, v5, [I

    add-int/2addr v12, v12

    .line 152
    new-array v12, v12, [Ljava/lang/Object;

    add-int v22, v15, v7

    move/from16 v23, v15

    move/from16 v7, v20

    move/from16 v24, v22

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_d
    if-ge v7, v4, :cond_34

    add-int/lit8 v25, v7, 0x1

    .line 153
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v26, v4

    const v4, 0xd800

    if-lt v7, v4, :cond_16

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v25

    const/16 v25, 0xd

    :goto_e
    add-int/lit8 v27, v4, 0x1

    .line 154
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v28, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_15

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v25

    or-int/2addr v7, v4

    add-int/lit8 v25, v25, 0xd

    move/from16 v4, v27

    move/from16 v15, v28

    goto :goto_e

    :cond_15
    shl-int v4, v4, v25

    or-int/2addr v7, v4

    move/from16 v4, v27

    goto :goto_f

    :cond_16
    move/from16 v28, v15

    move/from16 v4, v25

    :goto_f
    add-int/lit8 v15, v4, 0x1

    .line 155
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v25, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_18

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v15, v25

    const/16 v25, 0xd

    :goto_10
    add-int/lit8 v27, v15, 0x1

    .line 156
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v29, v13

    const v13, 0xd800

    if-lt v15, v13, :cond_17

    and-int/lit16 v13, v15, 0x1fff

    shl-int v13, v13, v25

    or-int/2addr v4, v13

    add-int/lit8 v25, v25, 0xd

    move/from16 v15, v27

    move/from16 v13, v29

    goto :goto_10

    :cond_17
    shl-int v13, v15, v25

    or-int/2addr v4, v13

    move/from16 v15, v27

    goto :goto_11

    :cond_18
    move/from16 v29, v13

    move/from16 v15, v25

    :goto_11
    and-int/lit16 v13, v4, 0xff

    move/from16 v25, v9

    and-int/lit16 v9, v4, 0x400

    if-eqz v9, :cond_19

    add-int/lit8 v9, v21, 0x1

    .line 157
    aput v20, v14, v21

    move/from16 v21, v9

    :cond_19
    const/16 v9, 0x33

    if-ge v13, v9, :cond_29

    add-int/lit8 v9, v10, 0x1

    .line 158
    aget-object v10, v3, v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v6, v10}, Lek;->OooO00o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/16 v0, 0x9

    if-ne v13, v0, :cond_1b

    :cond_1a
    const/16 v18, 0x1

    goto :goto_14

    :cond_1b
    const/16 v0, 0x11

    if-eq v13, v0, :cond_1a

    const/16 v0, 0x1b

    if-ne v13, v0, :cond_1d

    :cond_1c
    const/16 v18, 0x1

    goto :goto_12

    :cond_1d
    const/16 v0, 0x31

    if-eq v13, v0, :cond_1c

    const/16 v0, 0xc

    if-eq v13, v0, :cond_1f

    const/16 v0, 0x1e

    if-eq v13, v0, :cond_1f

    const/16 v0, 0x2c

    if-eq v13, v0, :cond_1f

    const/16 v0, 0x32

    if-ne v13, v0, :cond_21

    add-int/lit8 v0, v23, 0x1

    .line 159
    aput v20, v14, v23

    div-int/lit8 v23, v20, 0x3

    add-int/lit8 v30, v9, 0x1

    add-int v23, v23, v23

    .line 160
    aget-object v9, v3, v9

    aput-object v9, v12, v23

    and-int/lit16 v9, v4, 0x800

    if-eqz v9, :cond_1e

    add-int/lit8 v9, v30, 0x1

    add-int/lit8 v23, v23, 0x1

    .line 161
    aget-object v30, v3, v30

    aput-object v30, v12, v23

    move/from16 v23, v0

    goto :goto_15

    :cond_1e
    move/from16 v23, v0

    goto :goto_13

    :cond_1f
    if-nez v11, :cond_20

    div-int/lit8 v0, v20, 0x3

    add-int/lit8 v30, v9, 0x1

    add-int/2addr v0, v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 162
    aget-object v9, v3, v9

    aput-object v9, v12, v0

    goto :goto_13

    :cond_20
    const/16 v18, 0x1

    goto :goto_15

    .line 163
    :goto_12
    div-int/lit8 v0, v20, 0x3

    add-int/lit8 v30, v9, 0x1

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 164
    aget-object v9, v3, v9

    aput-object v9, v12, v0

    :goto_13
    move/from16 v0, v30

    goto :goto_16

    .line 165
    :goto_14
    div-int/lit8 v0, v20, 0x3

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 166
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v30

    aput-object v30, v12, v0

    :cond_21
    :goto_15
    move v0, v9

    .line 167
    :goto_16
    invoke-virtual {v8, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    and-int/lit16 v10, v4, 0x1000

    const v30, 0xfffff

    move/from16 v31, v0

    const/16 v0, 0x1000

    if-eq v10, v0, :cond_23

    :cond_22
    move/from16 v33, v2

    move/from16 v34, v4

    move-object v0, v5

    const/4 v10, 0x0

    goto :goto_1a

    :cond_23
    const/16 v0, 0x11

    if-gt v13, v0, :cond_22

    add-int/lit8 v0, v15, 0x1

    .line 168
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v15, 0xd800

    if-lt v10, v15, :cond_25

    and-int/lit16 v10, v10, 0x1fff

    const/16 v30, 0xd

    :goto_17
    add-int/lit8 v32, v0, 0x1

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v15, :cond_24

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v30

    or-int/2addr v10, v0

    add-int/lit8 v30, v30, 0xd

    move/from16 v0, v32

    const v15, 0xd800

    goto :goto_17

    :cond_24
    shl-int v0, v0, v30

    or-int/2addr v10, v0

    move/from16 v15, v32

    goto :goto_18

    :cond_25
    move v15, v0

    :goto_18
    add-int v0, v2, v2

    div-int/lit8 v30, v10, 0x20

    add-int v0, v0, v30

    move/from16 v33, v2

    .line 170
    aget-object v2, v3, v0

    move/from16 v30, v15

    .line 171
    instance-of v15, v2, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_26

    .line 172
    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_19

    .line 173
    :cond_26
    check-cast v2, Ljava/lang/String;

    invoke-static {v6, v2}, Lek;->OooO00o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 174
    aput-object v2, v3, v0

    :goto_19
    move/from16 v34, v4

    move-object v0, v5

    .line 175
    invoke-virtual {v8, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v2, v4

    rem-int/lit8 v10, v10, 0x20

    move/from16 v15, v30

    move/from16 v30, v2

    :goto_1a
    const/16 v2, 0x12

    if-ge v13, v2, :cond_27

    goto :goto_1b

    :cond_27
    const/16 v2, 0x31

    if-gt v13, v2, :cond_28

    add-int/lit8 v2, v24, 0x1

    .line 176
    aput v9, v14, v24

    move/from16 v24, v2

    :cond_28
    :goto_1b
    const/16 v18, 0x1

    goto/16 :goto_22

    :cond_29
    move/from16 v33, v2

    move/from16 v34, v4

    move-object v0, v5

    add-int/lit8 v2, v15, 0x1

    .line 177
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_2b

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_1c
    add-int/lit8 v15, v2, 0x1

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_2a

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v9

    or-int/2addr v4, v2

    add-int/lit8 v9, v9, 0xd

    move v2, v15

    goto :goto_1c

    :cond_2a
    shl-int/2addr v2, v9

    or-int/2addr v4, v2

    move v2, v15

    :cond_2b
    add-int/lit8 v9, v13, -0x33

    const/16 v15, 0x9

    if-ne v9, v15, :cond_2c

    goto :goto_1e

    :cond_2c
    const/16 v15, 0x11

    if-eq v9, v15, :cond_2f

    const/16 v15, 0xc

    if-eq v9, v15, :cond_2d

    goto :goto_1d

    :cond_2d
    if-nez v11, :cond_2e

    .line 179
    div-int/lit8 v9, v20, 0x3

    add-int/lit8 v15, v10, 0x1

    add-int/2addr v9, v9

    const/16 v18, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 180
    aget-object v10, v3, v10

    aput-object v10, v12, v9

    move v10, v15

    :cond_2e
    :goto_1d
    const/16 v18, 0x1

    goto :goto_1f

    .line 181
    :cond_2f
    :goto_1e
    div-int/lit8 v9, v20, 0x3

    add-int/lit8 v15, v10, 0x1

    add-int/2addr v9, v9

    const/16 v18, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 182
    aget-object v10, v3, v10

    aput-object v10, v12, v9

    move v10, v15

    :goto_1f
    add-int/2addr v4, v4

    .line 183
    aget-object v9, v3, v4

    .line 184
    instance-of v15, v9, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_30

    .line 185
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_20

    .line 186
    :cond_30
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lek;->OooO00o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 187
    aput-object v9, v3, v4

    :goto_20
    move-object v15, v6

    .line 188
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v9, v5

    add-int/lit8 v4, v4, 0x1

    .line 189
    aget-object v5, v3, v4

    .line 190
    instance-of v6, v5, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_31

    .line 191
    check-cast v5, Ljava/lang/reflect/Field;

    move-object v6, v15

    goto :goto_21

    .line 192
    :cond_31
    check-cast v5, Ljava/lang/String;

    move-object v6, v15

    invoke-static {v6, v5}, Lek;->OooO00o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 193
    aput-object v5, v3, v4

    .line 194
    :goto_21
    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move v15, v2

    move/from16 v30, v4

    move/from16 v31, v10

    const/4 v10, 0x0

    :goto_22
    add-int/lit8 v2, v20, 0x1

    .line 195
    aput v7, v0, v20

    add-int/lit8 v4, v2, 0x1

    move/from16 v5, v34

    and-int/lit16 v7, v5, 0x200

    if-eqz v7, :cond_32

    const/high16 v7, 0x20000000

    goto :goto_23

    :cond_32
    const/4 v7, 0x0

    :goto_23
    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_33

    const/high16 v5, 0x10000000

    goto :goto_24

    :cond_33
    const/4 v5, 0x0

    :goto_24
    or-int/2addr v5, v7

    shl-int/lit8 v7, v13, 0x14

    or-int/2addr v5, v7

    or-int/2addr v5, v9

    .line 196
    aput v5, v0, v2

    add-int/lit8 v20, v4, 0x1

    shl-int/lit8 v2, v10, 0x14

    or-int v2, v2, v30

    .line 197
    aput v2, v0, v4

    move-object v5, v0

    move v7, v15

    move/from16 v9, v25

    move/from16 v4, v26

    move/from16 v15, v28

    move/from16 v13, v29

    move/from16 v10, v31

    move/from16 v2, v33

    move-object/from16 v0, p0

    goto/16 :goto_d

    :cond_34
    move-object v0, v5

    move/from16 v25, v9

    move/from16 v29, v13

    move/from16 v28, v15

    .line 198
    new-instance v1, Lek;

    move-object v5, v1

    move-object/from16 v2, p0

    iget-object v10, v2, Ler;->a:Leh;

    const/4 v2, 0x0

    move-object v3, v12

    move v12, v2

    const/16 v21, 0x0

    move-object v6, v0

    move-object v7, v3

    move/from16 v8, v25

    move/from16 v9, v29

    move-object v13, v14

    move/from16 v14, v28

    move/from16 v15, v22

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 199
    invoke-direct/range {v5 .. v21}, Lek;-><init>([I[Ljava/lang/Object;IILeh;ZZ[IIILfs;Ldv;Lfh;Lej;Lff;[B)V

    return-object v1

    :cond_35
    move v5, v7

    goto/16 :goto_1
.end method

.method private final OooO00o(I)Les;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lek;->d:[Ljava/lang/Object;

    .line 1
    aget-object v1, v0, p1

    check-cast v1, Les;

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lep;->a:Lep;

    add-int/lit8 v2, p1, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lep;->OooO00o(Ljava/lang/Class;)Les;

    move-result-object v0

    iget-object v1, p0, Lek;->d:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static OooO00o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 485
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 486
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 487
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 488
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 489
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 490
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static OooO00o(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final OooO00o(ILjava/lang/Object;Lgb;)V
    .locals 1

    .line 498
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 499
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lgb;->OooO00o(ILjava/lang/String;)V

    return-void

    .line 500
    :cond_0
    check-cast p1, Lck;

    invoke-interface {p2, p0, p1}, Lgb;->OooO00o(ILck;)V

    return-void
.end method

.method public static final OooO00o(Lfh;Ljava/lang/Object;Lgb;)V
    .locals 0

    .line 722
    invoke-virtual {p0, p1}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lfh;->OooO0O0(Ljava/lang/Object;Lgb;)V

    return-void
.end method

.method private final OooO00o(Lgb;ILjava/lang/Object;I)V
    .locals 5

    if-eqz p3, :cond_0

    .line 491
    invoke-direct {p0, p4}, Lek;->OooO0O0(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lff;->OooO0O0(Ljava/lang/Object;)Lea;

    move-result-object p4

    .line 492
    invoke-static {p3}, Lff;->OooO00o(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 493
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, p1

    check-cast v1, Lco;

    iget-object v2, v1, Lco;->a:Lcn;

    const/4 v3, 0x2

    .line 494
    invoke-virtual {v2, p2, v3}, Lcn;->OooO0O0(II)V

    iget-object v2, v1, Lco;->a:Lcn;

    .line 495
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p4, v3, v4}, Leb;->OooO00o(Lea;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 496
    invoke-virtual {v2, v3}, Lcn;->OooO0O0(I)V

    iget-object v1, v1, Lco;->a:Lcn;

    .line 497
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p4, v2, v0}, Leb;->OooO00o(Lcn;Lea;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final OooO00o(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    .line 113
    invoke-direct {p0, p3}, Lek;->OooO0o0(I)I

    move-result v0

    .line 114
    invoke-static {v0}, Lek;->OooO0oo(I)J

    move-result-wide v0

    .line 115
    invoke-direct {p0, p2, p3}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-static {p1, v0, v1}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 117
    invoke-static {p2, v0, v1}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {v2, p2}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 119
    invoke-static {p1, v0, v1, p2}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 120
    invoke-direct {p0, p1, p3}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 121
    invoke-static {p1, v0, v1, p2}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 122
    invoke-direct {p0, p1, p3}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final OooO00o(Ljava/lang/Object;I)Z
    .locals 6

    .line 7
    invoke-direct {p0, p2}, Lek;->OooO0o(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    const-wide/32 v3, 0xfffff

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_14

    .line 8
    invoke-direct {p0, p2}, Lek;->OooO0o0(I)I

    move-result p2

    .line 9
    invoke-static {p2}, Lek;->OooO0oo(I)J

    move-result-wide v0

    .line 10
    invoke-static {p2}, Lek;->OooO0oO(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 13
    :pswitch_0
    invoke-static {p1, v0, v1}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v4

    .line 14
    :pswitch_1
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v5

    :cond_1
    return v4

    .line 15
    :pswitch_2
    invoke-static {p1, v0, v1}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v4

    .line 16
    :pswitch_3
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v5

    :cond_3
    return v4

    .line 17
    :pswitch_4
    invoke-static {p1, v0, v1}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4

    .line 18
    :pswitch_5
    invoke-static {p1, v0, v1}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v5

    :cond_5
    return v4

    .line 19
    :pswitch_6
    invoke-static {p1, v0, v1}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v4

    .line 20
    :pswitch_7
    sget-object p2, Lck;->b:Lck;

    invoke-static {p1, v0, v1}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lck;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v4

    .line 21
    :pswitch_8
    invoke-static {p1, v0, v1}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4

    .line 22
    :pswitch_9
    invoke-static {p1, v0, v1}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 23
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v4

    .line 25
    :cond_a
    instance-of p2, p1, Lck;

    if-eqz p2, :cond_c

    .line 26
    sget-object p2, Lck;->b:Lck;

    invoke-virtual {p2, p1}, Lck;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v4

    .line 27
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 29
    :pswitch_a
    invoke-static {p1, v0, v1}, Lfr;->OooO0OO(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 30
    :pswitch_b
    invoke-static {p1, v0, v1}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v5

    :cond_d
    return v4

    .line 31
    :pswitch_c
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v5

    :cond_e
    return v4

    .line 32
    :pswitch_d
    invoke-static {p1, v0, v1}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v5

    :cond_f
    return v4

    .line 33
    :pswitch_e
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v5

    :cond_10
    return v4

    .line 34
    :pswitch_f
    invoke-static {p1, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v5

    :cond_11
    return v4

    .line 35
    :pswitch_10
    invoke-static {p1, v0, v1}, Lfr;->OooO0Oo(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v5

    :cond_12
    return v4

    .line 36
    :pswitch_11
    invoke-static {p1, v0, v1}, Lfr;->OooO0o0(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_13

    return v5

    :cond_13
    return v4

    .line 37
    :cond_14
    invoke-static {p1, v1, v2}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v5

    :cond_15
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final OooO00o(Ljava/lang/Object;II)Z
    .locals 2

    .line 41
    invoke-direct {p0, p3}, Lek;->OooO0o(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 42
    invoke-static {p1, v0, v1}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final OooO00o(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-eq p3, v0, :cond_1

    and-int p1, p4, p5

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 38
    :cond_1
    invoke-direct {p0, p1, p2}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public static OooO00o(Ljava/lang/Object;ILes;)Z
    .locals 2

    .line 39
    invoke-static {p1}, Lek;->OooO0oo(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 40
    invoke-interface {p2, p0}, Les;->OooO0O0(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static OooO0O0(Ljava/lang/Object;J)D
    .locals 0

    .line 98
    invoke-static {p0, p1, p2}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final OooO0O0(II)I
    .locals 5

    iget-object v0, p0, Lek;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    .line 159
    invoke-direct {p0, v3}, Lek;->OooO0Oo(I)I

    move-result v4

    if-eq p1, v4, :cond_1

    if-lt p1, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method private final OooO0O0(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lek;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 61
    aget-object p1, v0, p1

    return-object p1
.end method

.method private final OooO0O0(Ljava/lang/Object;I)V
    .locals 4

    .line 154
    invoke-direct {p0, p2}, Lek;->OooO0o(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 155
    invoke-static {p1, v0, v1}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 156
    invoke-static {p1, v0, v1, p2}, Lfr;->OooO00o(Ljava/lang/Object;JI)V

    :cond_0
    return-void
.end method

.method private final OooO0O0(Ljava/lang/Object;II)V
    .locals 2

    .line 157
    invoke-direct {p0, p3}, Lek;->OooO0o(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 158
    invoke-static {p1, v0, v1, p2}, Lfr;->OooO00o(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final OooO0O0(Ljava/lang/Object;Lgb;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lek;->h:Z

    if-eqz v3, :cond_0

    .line 160
    invoke-static/range {p1 .. p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Lcu;->OooO00o()Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    invoke-virtual {v3}, Lcu;->OooO0Oo()Ljava/util/Iterator;

    move-result-object v3

    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lek;->c:[I

    array-length v6, v6

    sget-object v7, Lek;->b:Lsun/misc/Unsafe;

    const v8, 0xfffff

    move v11, v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_9

    .line 164
    invoke-direct {v0, v10}, Lek;->OooO0o0(I)I

    move-result v13

    .line 165
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v14

    .line 166
    invoke-static {v13}, Lek;->OooO0oO(I)I

    move-result v15

    iget-boolean v4, v0, Lek;->i:Z

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x11

    if-gt v15, v4, :cond_1

    .line 167
    iget-object v4, v0, Lek;->c:[I

    add-int/lit8 v16, v10, 0x2

    .line 168
    aget v4, v4, v16

    and-int v9, v4, v8

    if-eq v9, v11, :cond_3

    int-to-long v11, v9

    .line 169
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    :cond_3
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    .line 170
    :cond_4
    invoke-static {v5}, Lej;->OooO00o(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_6

    .line 171
    invoke-static {v2, v5}, Lej;->OooO00o(Lgb;Ljava/util/Map$Entry;)V

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 173
    :cond_6
    :goto_3
    invoke-static {v13}, Lek;->OooO0oo(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_0

    :cond_7
    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 174
    :pswitch_0
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 175
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lek;->OooO00o(I)Les;

    move-result-object v8

    .line 176
    invoke-interface {v2, v14, v4, v8}, Lgb;->OooO00o(ILjava/lang/Object;Les;)V

    goto :goto_4

    .line 177
    :pswitch_1
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 178
    invoke-static {v1, v8, v9}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0OO(IJ)V

    goto :goto_4

    .line 179
    :pswitch_2
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 180
    invoke-static {v1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0Oo(II)V

    goto :goto_4

    .line 181
    :pswitch_3
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 182
    invoke-static {v1, v8, v9}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0o0(IJ)V

    goto :goto_4

    .line 183
    :pswitch_4
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 184
    invoke-static {v1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0o0(II)V

    goto :goto_4

    .line 185
    :pswitch_5
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 186
    invoke-static {v1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0o(II)V

    goto :goto_4

    .line 187
    :pswitch_6
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 188
    invoke-static {v1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0OO(II)V

    goto :goto_4

    .line 189
    :pswitch_7
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 190
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lck;

    invoke-interface {v2, v14, v4}, Lgb;->OooO00o(ILck;)V

    goto :goto_4

    .line 191
    :pswitch_8
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 192
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 193
    invoke-direct {v0, v10}, Lek;->OooO00o(I)Les;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lgb;->OooO0O0(ILjava/lang/Object;Les;)V

    goto/16 :goto_4

    .line 194
    :pswitch_9
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 195
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lek;->OooO00o(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_4

    .line 196
    :pswitch_a
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 197
    invoke-static {v1, v8, v9}, Lek;->OooO0o(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO00o(IZ)V

    goto/16 :goto_4

    .line 198
    :pswitch_b
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 199
    invoke-static {v1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0O0(II)V

    goto/16 :goto_4

    .line 200
    :pswitch_c
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 201
    invoke-static {v1, v8, v9}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0O0(IJ)V

    goto/16 :goto_4

    .line 202
    :pswitch_d
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 203
    invoke-static {v1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO00o(II)V

    goto/16 :goto_4

    .line 204
    :pswitch_e
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 205
    invoke-static {v1, v8, v9}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO00o(IJ)V

    goto/16 :goto_4

    .line 206
    :pswitch_f
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 207
    invoke-static {v1, v8, v9}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0Oo(IJ)V

    goto/16 :goto_4

    .line 208
    :pswitch_10
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 209
    invoke-static {v1, v8, v9}, Lek;->OooO0OO(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO00o(IF)V

    goto/16 :goto_4

    .line 210
    :pswitch_11
    invoke-direct {v0, v1, v14, v10}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 211
    invoke-static {v1, v8, v9}, Lek;->OooO0O0(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO00o(ID)V

    goto/16 :goto_4

    .line 212
    :pswitch_12
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v10}, Lek;->OooO00o(Lgb;ILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 213
    :pswitch_13
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    .line 214
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 215
    invoke-direct {v0, v10}, Lek;->OooO00o(I)Les;

    move-result-object v9

    .line 216
    invoke-static {v4, v8, v2, v9}, Leu;->OooO0O0(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_4

    .line 217
    :pswitch_14
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x1

    .line 218
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0o0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_15
    const/4 v13, 0x1

    .line 219
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 220
    invoke-static {v4, v8, v2, v13}, Leu;->OooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_16
    const/4 v13, 0x1

    .line 221
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 222
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0oO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_17
    const/4 v13, 0x1

    .line 223
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 224
    invoke-static {v4, v8, v2, v13}, Leu;->OooOO0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_18
    const/4 v13, 0x1

    .line 225
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 226
    invoke-static {v4, v8, v2, v13}, Leu;->OooOOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_19
    const/4 v13, 0x1

    .line 227
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 228
    invoke-static {v4, v8, v2, v13}, Leu;->OooO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1a
    const/4 v13, 0x1

    .line 229
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 230
    invoke-static {v4, v8, v2, v13}, Leu;->OooOOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1b
    const/4 v13, 0x1

    .line 231
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 232
    invoke-static {v4, v8, v2, v13}, Leu;->OooOO0O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1c
    const/4 v13, 0x1

    .line 233
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 234
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1d
    const/4 v13, 0x1

    .line 235
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 236
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0oo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1e
    const/4 v13, 0x1

    .line 237
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 238
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0Oo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_1f
    const/4 v13, 0x1

    .line 239
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 240
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0OO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_20
    const/4 v13, 0x1

    .line 241
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 242
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0O0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    :pswitch_21
    const/4 v13, 0x1

    .line 243
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 244
    invoke-static {v4, v8, v2, v13}, Leu;->OooO00o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 245
    :pswitch_22
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    .line 246
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0o0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_23
    const/4 v13, 0x0

    .line 247
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 248
    invoke-static {v4, v8, v2, v13}, Leu;->OooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_24
    const/4 v13, 0x0

    .line 249
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 250
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0oO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_25
    const/4 v13, 0x0

    .line 251
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 252
    invoke-static {v4, v8, v2, v13}, Leu;->OooOO0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_26
    const/4 v13, 0x0

    .line 253
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 254
    invoke-static {v4, v8, v2, v13}, Leu;->OooOOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_27
    const/4 v13, 0x0

    .line 255
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 256
    invoke-static {v4, v8, v2, v13}, Leu;->OooO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    .line 257
    :pswitch_28
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 258
    invoke-static {v4, v8, v2}, Leu;->OooO0O0(ILjava/util/List;Lgb;)V

    goto/16 :goto_4

    .line 259
    :pswitch_29
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    .line 260
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 261
    invoke-direct {v0, v10}, Lek;->OooO00o(I)Les;

    move-result-object v9

    .line 262
    invoke-static {v4, v8, v2, v9}, Leu;->OooO00o(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_4

    .line 263
    :pswitch_2a
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 264
    invoke-static {v4, v8, v2}, Leu;->OooO00o(ILjava/util/List;Lgb;)V

    goto/16 :goto_4

    .line 265
    :pswitch_2b
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    .line 266
    invoke-static {v4, v8, v2, v13}, Leu;->OooOOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_2c
    const/4 v13, 0x0

    .line 267
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 268
    invoke-static {v4, v8, v2, v13}, Leu;->OooOO0O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v13, 0x0

    .line 269
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 270
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_2e
    const/4 v13, 0x0

    .line 271
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 272
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0oo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v13, 0x0

    .line 273
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 274
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0Oo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_30
    const/4 v13, 0x0

    .line 275
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 276
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0OO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_31
    const/4 v13, 0x0

    .line 277
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 278
    invoke-static {v4, v8, v2, v13}, Leu;->OooO0O0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_32
    const/4 v13, 0x0

    .line 279
    invoke-direct {v0, v10}, Lek;->OooO0Oo(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 280
    invoke-static {v4, v8, v2, v13}, Leu;->OooO00o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_5

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 281
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lek;->OooO00o(I)Les;

    move-result-object v8

    .line 282
    invoke-interface {v2, v14, v4, v8}, Lgb;->OooO00o(ILjava/lang/Object;Les;)V

    goto/16 :goto_5

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 283
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0OO(IJ)V

    goto/16 :goto_5

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 284
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0Oo(II)V

    goto/16 :goto_5

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 285
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0o0(IJ)V

    goto/16 :goto_5

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 286
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0o0(II)V

    goto/16 :goto_5

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 287
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0o(II)V

    goto/16 :goto_5

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 288
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0OO(II)V

    goto/16 :goto_5

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 289
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lck;

    invoke-interface {v2, v14, v4}, Lgb;->OooO00o(ILck;)V

    goto/16 :goto_5

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 290
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 291
    invoke-direct {v0, v10}, Lek;->OooO00o(I)Les;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lgb;->OooO0O0(ILjava/lang/Object;Les;)V

    goto/16 :goto_5

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 292
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lek;->OooO00o(ILjava/lang/Object;Lgb;)V

    goto :goto_5

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 293
    invoke-static {v1, v8, v9}, Lfr;->OooO0OO(Ljava/lang/Object;J)Z

    move-result v4

    .line 294
    invoke-interface {v2, v14, v4}, Lgb;->OooO00o(IZ)V

    goto :goto_5

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 295
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO0O0(II)V

    goto :goto_5

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 296
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0O0(IJ)V

    goto :goto_5

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 297
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->OooO00o(II)V

    goto :goto_5

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 298
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO00o(IJ)V

    goto :goto_5

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 299
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO0Oo(IJ)V

    goto :goto_5

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 300
    invoke-static {v1, v8, v9}, Lfr;->OooO0Oo(Ljava/lang/Object;J)F

    move-result v4

    .line 301
    invoke-interface {v2, v14, v4}, Lgb;->OooO00o(IF)V

    goto :goto_5

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_8

    .line 302
    invoke-static {v1, v8, v9}, Lfr;->OooO0o0(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 303
    invoke-interface {v2, v14, v8, v9}, Lgb;->OooO00o(ID)V

    :cond_8
    :goto_5
    add-int/lit8 v10, v10, 0x3

    const v8, 0xfffff

    goto/16 :goto_1

    :cond_9
    :goto_6
    if-eqz v5, :cond_b

    .line 304
    invoke-static {v2, v5}, Lej;->OooO00o(Lgb;Ljava/util/Map$Entry;)V

    .line 305
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    iget-object v3, v0, Lek;->o:Lfh;

    .line 306
    invoke-static {v3, v1, v2}, Lek;->OooO00o(Lfh;Ljava/lang/Object;Lgb;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final OooO0O0(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    .line 87
    invoke-direct {p0, p3}, Lek;->OooO0o0(I)I

    move-result v0

    .line 88
    invoke-direct {p0, p3}, Lek;->OooO0Oo(I)I

    move-result v1

    .line 89
    invoke-static {v0}, Lek;->OooO0oo(I)J

    move-result-wide v2

    .line 90
    invoke-direct {p0, p2, v1, p3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-static {p1, v2, v3}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 92
    invoke-static {p2, v2, v3}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {v0, p2}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 94
    invoke-static {p1, v2, v3, p2}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 95
    invoke-direct {p0, p1, v1, p3}, Lek;->OooO0O0(Ljava/lang/Object;II)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 96
    invoke-static {p1, v2, v3, p2}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 97
    invoke-direct {p0, p1, v1, p3}, Lek;->OooO0O0(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private final OooO0O0(Ljava/lang/Object;[BIILby;)V
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lek;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    move v1, v10

    move/from16 v2, v16

    move v6, v2

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_17

    add-int/lit8 v3, v0, 0x1

    .line 99
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 100
    invoke-static {v0, v12, v3, v11}, Leb;->OooO00o(I[BILby;)I

    move-result v0

    iget v3, v11, Lby;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    .line 101
    invoke-direct {v15, v5, v2}, Lek;->OooO00o(II)I

    move-result v0

    goto :goto_2

    .line 102
    :cond_1
    invoke-direct {v15, v5}, Lek;->OooO(I)I

    move-result v0

    :goto_2
    move v2, v0

    if-eq v2, v10, :cond_16

    .line 103
    iget-object v0, v15, Lek;->c:[I

    add-int/lit8 v1, v2, 0x1

    .line 104
    aget v1, v0, v1

    .line 105
    invoke-static {v1}, Lek;->OooO0oO(I)I

    move-result v0

    move-object/from16 v18, v9

    .line 106
    invoke-static {v1}, Lek;->OooO0oo(I)J

    move-result-wide v8

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_d

    iget-object v10, v15, Lek;->c:[I

    add-int/lit8 v21, v2, 0x2

    .line 107
    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-ne v10, v7, :cond_2

    move/from16 v23, v1

    move/from16 v19, v2

    move v10, v7

    move-object/from16 v7, v18

    goto :goto_4

    :cond_2
    move/from16 v23, v1

    move/from16 v19, v2

    if-eq v7, v13, :cond_3

    int-to-long v1, v7

    move-object/from16 v7, v18

    .line 108
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move-object/from16 v7, v18

    :goto_3
    if-eq v10, v13, :cond_4

    int-to-long v1, v10

    .line 109
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_4
    :goto_4
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    goto/16 :goto_c

    :pswitch_0
    if-nez v3, :cond_5

    .line 110
    invoke-static {v12, v4, v11}, Leb;->OooO0O0([BILby;)I

    move-result v17

    iget-wide v0, v11, Lby;->b:J

    .line 111
    invoke-static {v0, v1}, Lcl;->OooO00o(J)J

    move-result-wide v4

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v13, v19

    move-wide v2, v8

    move/from16 v19, p3

    .line 112
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_9

    :cond_5
    move/from16 v13, v19

    move/from16 v19, p3

    goto :goto_5

    :pswitch_1
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_8

    .line 113
    invoke-static {v12, v4, v11}, Leb;->OooO00o([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    .line 114
    invoke-static {v1}, Lcl;->OooO00o(I)I

    move-result v1

    .line 115
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_2
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_8

    .line 116
    invoke-static {v12, v4, v11}, Leb;->OooO00o([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    .line 117
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_3
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_8

    .line 118
    invoke-static {v12, v4, v11}, Leb;->OooO0o0([BILby;)I

    move-result v0

    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    .line 119
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_4
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_7

    .line 120
    invoke-direct {v15, v13}, Lek;->OooO00o(I)Les;

    move-result-object v0

    move/from16 v2, p4

    const v18, 0xfffff

    .line 121
    invoke-static {v0, v12, v4, v2, v11}, Leb;->OooO00o(Les;[BIILby;)I

    move-result v0

    .line 122
    invoke-virtual {v7, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    .line 123
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_6
    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 124
    invoke-static {v1, v3}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_7
    move/from16 v2, p4

    :cond_8
    :goto_5
    const v18, 0xfffff

    goto/16 :goto_c

    :pswitch_5
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-eq v3, v0, :cond_9

    goto/16 :goto_c

    :cond_9
    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-eqz v0, :cond_a

    .line 126
    invoke-static {v12, v4, v11}, Leb;->OooO0Oo([BILby;)I

    move-result v0

    goto :goto_6

    .line 127
    :cond_a
    invoke-static {v12, v4, v11}, Leb;->OooO0OO([BILby;)I

    move-result v0

    .line 128
    :goto_6
    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    .line 129
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_6
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_c

    .line 130
    invoke-static {v12, v4, v11}, Leb;->OooO0O0([BILby;)I

    move-result v0

    iget-wide v3, v11, Lby;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v5, v16

    .line 131
    :goto_7
    invoke-static {v14, v8, v9, v5}, Lfr;->OooO00o(Ljava/lang/Object;JZ)V

    goto :goto_8

    :pswitch_7
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v1, :cond_c

    .line 132
    invoke-static {v12, v4}, Leb;->OooO00o([BI)I

    move-result v0

    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_8
    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    :pswitch_8
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v5, :cond_c

    .line 133
    invoke-static {v12, v4}, Leb;->OooO0O0([BI)J

    move-result-wide v22

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto :goto_a

    :pswitch_9
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_c

    .line 134
    invoke-static {v12, v4, v11}, Leb;->OooO00o([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    .line 135
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_c

    .line 136
    invoke-static {v12, v4, v11}, Leb;->OooO0O0([BILby;)I

    move-result v17

    iget-wide v4, v11, Lby;->b:J

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    .line 137
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_9
    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v0, v17

    goto :goto_b

    :pswitch_b
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v1, :cond_c

    .line 138
    invoke-static {v12, v4}, Leb;->OooO0Oo([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lfr;->OooO00o(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_a

    :pswitch_c
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v5, :cond_c

    .line 139
    invoke-static {v12, v4}, Leb;->OooO0OO([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lfr;->OooO00o(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_a
    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    :goto_b
    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_c
    :goto_c
    move v2, v4

    move-object v8, v7

    move/from16 v25, v10

    move/from16 v20, v13

    move-object v7, v14

    move-object v9, v15

    const/16 v18, -0x1

    goto/16 :goto_10

    :cond_d
    move/from16 v19, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v18

    const v18, 0xfffff

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_12

    const/16 v1, 0x31

    if-gt v0, v1, :cond_f

    move/from16 v1, v23

    int-to-long v1, v1

    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v19

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    move/from16 v9, v18

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v20, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    .line 140
    invoke-direct/range {v0 .. v14}, Lek;->OooO00o(Ljava/lang/Object;[BIIIIIIJIJLby;)I

    move-result v0

    if-eq v0, v15, :cond_e

    :goto_d
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    goto/16 :goto_0

    :cond_e
    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move v2, v0

    move/from16 v6, v24

    move-object/from16 v8, v28

    goto/16 :goto_10

    :cond_f
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-eq v9, v0, :cond_10

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v19

    move/from16 v7, p3

    move-wide/from16 v10, v26

    move/from16 v12, v20

    move-object/from16 v13, p5

    .line 141
    invoke-direct/range {v0 .. v13}, Lek;->OooO00o(Ljava/lang/Object;[BIIIIIIIJILby;)I

    move-result v0

    if-eq v0, v15, :cond_e

    goto :goto_d

    :cond_10
    move/from16 v0, p3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    goto/16 :goto_f

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    .line 142
    invoke-direct/range {v0 .. v8}, Lek;->OooO00o(Ljava/lang/Object;[BIIIJLby;)I

    move-result v0

    if-eq v0, v15, :cond_e

    goto :goto_d

    :cond_12
    move v0, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/4 v1, 0x2

    const/16 v18, -0x1

    if-ne v0, v1, :cond_15

    move-object/from16 v7, p1

    move-wide/from16 v0, v26

    move-object/from16 v8, v28

    .line 143
    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldi;

    .line 144
    invoke-interface {v2}, Ldi;->a()Z

    move-result v3

    if-nez v3, :cond_14

    .line 145
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_13

    add-int/2addr v3, v3

    goto :goto_e

    :cond_13
    const/16 v3, 0xa

    .line 146
    :goto_e
    invoke-interface {v2, v3}, Ldi;->a(I)Ldi;

    move-result-object v2

    .line 147
    invoke-virtual {v8, v7, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_14
    move-object/from16 v9, p0

    move-object v5, v2

    move v3, v15

    move/from16 v10, v20

    .line 148
    invoke-direct {v9, v10}, Lek;->OooO00o(I)Les;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 149
    invoke-static/range {v0 .. v6}, Leb;->OooO00o(Les;I[BIILdi;Lby;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v7

    move-object v15, v9

    move v2, v10

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v6, v24

    goto :goto_11

    :cond_15
    :goto_f
    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move v3, v15

    move/from16 v10, v20

    move-object/from16 v8, v28

    move v2, v3

    move/from16 v20, v10

    move/from16 v6, v24

    goto :goto_10

    :cond_16
    move v3, v4

    move/from16 v19, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-object v8, v9

    move/from16 v18, v10

    move-object v7, v14

    move-object v9, v15

    move v2, v3

    move/from16 v20, v16

    .line 150
    :goto_10
    invoke-static/range {p1 .. p1}, Lek;->OooO0Oo(Ljava/lang/Object;)Lfi;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 151
    invoke-static/range {v0 .. v5}, Leb;->OooO00o(I[BIILfi;Lby;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v7

    move-object v15, v9

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    :goto_11
    move/from16 v7, v25

    move-object v9, v8

    goto/16 :goto_0

    :cond_17
    move/from16 v24, v6

    move v10, v7

    move-object v8, v9

    move-object v7, v14

    move-object v9, v15

    const v1, 0xfffff

    if-eq v10, v1, :cond_18

    int-to-long v1, v10

    move/from16 v6, v24

    .line 152
    invoke-virtual {v8, v7, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_18
    move/from16 v1, p4

    if-ne v0, v1, :cond_19

    return-void

    .line 153
    :cond_19
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO0OO(Ljava/lang/Object;J)F
    .locals 0

    .line 10
    invoke-static {p0, p1, p2}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final OooO0OO(I)Ldh;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lek;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2
    aget-object p1, v0, p1

    check-cast p1, Ldh;

    return-object p1
.end method

.method private final OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final OooO0Oo(I)I
    .locals 1

    iget-object v0, p0, Lek;->c:[I

    .line 4
    aget p1, v0, p1

    return p1
.end method

.method public static OooO0Oo(Ljava/lang/Object;J)I
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static OooO0Oo(Ljava/lang/Object;)Lfi;
    .locals 2

    .line 1
    check-cast p0, Lde;

    iget-object v0, p0, Lde;->h:Lfi;

    .line 2
    sget-object v1, Lfi;->a:Lfi;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lfi;->OooO0OO()Lfi;

    move-result-object v0

    iput-object v0, p0, Lde;->h:Lfi;

    :cond_0
    return-object v0
.end method

.method private final OooO0o(I)I
    .locals 1

    iget-object v0, p0, Lek;->c:[I

    add-int/lit8 p1, p1, 0x2

    .line 179
    aget p1, v0, p1

    return p1
.end method

.method private final OooO0o(Ljava/lang/Object;)I
    .locals 9

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lek;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 1
    invoke-direct {p0, v1}, Lek;->OooO0o0(I)I

    move-result v3

    .line 2
    invoke-static {v3}, Lek;->OooO0oO(I)I

    move-result v4

    .line 3
    invoke-direct {p0, v1}, Lek;->OooO0Oo(I)I

    move-result v5

    .line 4
    invoke-static {v3}, Lek;->OooO0oo(I)J

    move-result-wide v6

    .line 5
    sget-object v3, Lcw;->J:Lcw;

    iget v3, v3, Lcw;->Z:I

    if-lt v4, v3, :cond_0

    sget-object v3, Lcw;->W:Lcw;

    iget v3, v3, Lcw;->Z:I

    if-gt v4, v3, :cond_0

    iget-object v3, p0, Lek;->c:[I

    add-int/lit8 v8, v1, 0x2

    .line 6
    aget v3, v3, v8

    :cond_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    .line 7
    :pswitch_0
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-static {p1, v6, v7}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh;

    .line 9
    invoke-direct {p0, v1}, Lek;->OooO00o(I)Les;

    move-result-object v4

    .line 10
    invoke-static {v5, v3, v4}, Lcn;->OooO0O0(ILeh;Les;)I

    move-result v3

    goto/16 :goto_2

    .line 11
    :pswitch_1
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    invoke-static {p1, v6, v7}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->OooO0o(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 13
    :pswitch_2
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {p1, v6, v7}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->OooO0oo(II)I

    move-result v3

    goto/16 :goto_2

    .line 15
    :pswitch_3
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-static {v5}, Lcn;->OooOOOo(I)I

    move-result v3

    goto/16 :goto_2

    .line 17
    :pswitch_4
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-static {v5}, Lcn;->OooOOOO(I)I

    move-result v3

    goto/16 :goto_2

    .line 19
    :pswitch_5
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 20
    invoke-static {p1, v6, v7}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->OooO(II)I

    move-result v3

    goto/16 :goto_2

    .line 21
    :pswitch_6
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 22
    invoke-static {p1, v6, v7}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->OooO0oO(II)I

    move-result v3

    goto/16 :goto_2

    .line 23
    :pswitch_7
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 24
    invoke-static {p1, v6, v7}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lck;

    .line 25
    invoke-static {v5, v3}, Lcn;->OooO0OO(ILck;)I

    move-result v3

    goto/16 :goto_2

    .line 26
    :pswitch_8
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 27
    invoke-static {p1, v6, v7}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-direct {p0, v1}, Lek;->OooO00o(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Leu;->OooO00o(ILjava/lang/Object;Les;)I

    move-result v3

    goto/16 :goto_2

    .line 29
    :pswitch_9
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 30
    invoke-static {p1, v6, v7}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    instance-of v4, v3, Lck;

    if-eqz v4, :cond_1

    .line 32
    check-cast v3, Lck;

    invoke-static {v5, v3}, Lcn;->OooO0OO(ILck;)I

    move-result v3

    goto/16 :goto_2

    .line 33
    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcn;->OooO0O0(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    .line 34
    :pswitch_a
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    invoke-static {v5}, Lcn;->OooOO0(I)I

    move-result v3

    goto/16 :goto_2

    .line 36
    :pswitch_b
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 37
    invoke-static {v5}, Lcn;->OooOO0o(I)I

    move-result v3

    goto/16 :goto_2

    .line 38
    :pswitch_c
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 39
    invoke-static {v5}, Lcn;->OooOOO0(I)I

    move-result v3

    goto/16 :goto_2

    .line 40
    :pswitch_d
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 41
    invoke-static {p1, v6, v7}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->OooO0o(II)I

    move-result v3

    goto/16 :goto_2

    .line 42
    :pswitch_e
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 43
    invoke-static {p1, v6, v7}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->OooO0o0(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 44
    :pswitch_f
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    invoke-static {p1, v6, v7}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->OooO0Oo(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 46
    :pswitch_10
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    invoke-static {v5}, Lcn;->OooOOO(I)I

    move-result v3

    goto/16 :goto_2

    .line 48
    :pswitch_11
    invoke-direct {p0, p1, v5, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    invoke-static {v5}, Lcn;->OooOO0O(I)I

    move-result v3

    goto/16 :goto_2

    .line 50
    :pswitch_12
    invoke-static {p1, v6, v7}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Lff;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 52
    :pswitch_13
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->OooO00o(I)Les;

    move-result-object v4

    .line 53
    invoke-static {v5, v3, v4}, Leu;->OooO0O0(ILjava/util/List;Les;)I

    move-result v3

    goto/16 :goto_2

    .line 54
    :pswitch_14
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 55
    invoke-static {v3}, Leu;->OooO0OO(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 56
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 57
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto/16 :goto_1

    .line 58
    :pswitch_15
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 59
    invoke-static {v3}, Leu;->OooO0oO(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 60
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 61
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto/16 :goto_1

    .line 62
    :pswitch_16
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 63
    invoke-static {v3}, Leu;->OooO(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 64
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 65
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto/16 :goto_1

    .line 66
    :pswitch_17
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 67
    invoke-static {v3}, Leu;->OooO0oo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 68
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 69
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto/16 :goto_1

    .line 70
    :pswitch_18
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 71
    invoke-static {v3}, Leu;->OooO0Oo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 72
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 73
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto/16 :goto_1

    .line 74
    :pswitch_19
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 75
    invoke-static {v3}, Leu;->OooO0o(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 76
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 77
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto/16 :goto_1

    .line 78
    :pswitch_1a
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 79
    invoke-static {v3}, Leu;->OooOO0(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 80
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 81
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto/16 :goto_1

    .line 82
    :pswitch_1b
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 83
    invoke-static {v3}, Leu;->OooO0oo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 84
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 85
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto/16 :goto_1

    .line 86
    :pswitch_1c
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 87
    invoke-static {v3}, Leu;->OooO(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 88
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 89
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto :goto_1

    .line 90
    :pswitch_1d
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 91
    invoke-static {v3}, Leu;->OooO0o0(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 92
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 93
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto :goto_1

    .line 94
    :pswitch_1e
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 95
    invoke-static {v3}, Leu;->OooO0O0(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 96
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 97
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto :goto_1

    .line 98
    :pswitch_1f
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 99
    invoke-static {v3}, Leu;->OooO00o(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 100
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 101
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto :goto_1

    .line 102
    :pswitch_20
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 103
    invoke-static {v3}, Leu;->OooO0oo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 104
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 105
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    goto :goto_1

    .line 106
    :pswitch_21
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 107
    invoke-static {v3}, Leu;->OooO(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 108
    invoke-static {v5}, Lcn;->OooO0Oo(I)I

    move-result v4

    .line 109
    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_3

    .line 110
    :pswitch_22
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOO0(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    .line 111
    :pswitch_23
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 112
    invoke-static {v5, v3}, Leu;->OooO(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    .line 113
    :pswitch_24
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooO0o(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    .line 114
    :pswitch_25
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooO0o0(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    .line 115
    :pswitch_26
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 116
    invoke-static {v5, v3}, Leu;->OooO0Oo(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    .line 117
    :pswitch_27
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 118
    invoke-static {v5, v3}, Leu;->OooOO0O(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 119
    :pswitch_28
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 120
    invoke-static {v5, v3}, Leu;->OooO0O0(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 121
    :pswitch_29
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->OooO00o(I)Les;

    move-result-object v4

    .line 122
    invoke-static {v5, v3, v4}, Leu;->OooO00o(ILjava/util/List;Les;)I

    move-result v3

    goto :goto_2

    .line 123
    :pswitch_2a
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooO00o(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 124
    :pswitch_2b
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooO0OO(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 125
    :pswitch_2c
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooO0o0(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 126
    :pswitch_2d
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooO0o(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 127
    :pswitch_2e
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 128
    invoke-static {v5, v3}, Leu;->OooO0oO(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 129
    :pswitch_2f
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooOO0o(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 130
    :pswitch_30
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooO0oo(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 131
    :pswitch_31
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooO0o0(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 132
    :pswitch_32
    invoke-static {p1, v6, v7}, Lek;->OooO00o(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->OooO0o(ILjava/util/List;)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 133
    :pswitch_33
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    invoke-static {p1, v6, v7}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh;

    .line 135
    invoke-direct {p0, v1}, Lek;->OooO00o(I)Les;

    move-result-object v4

    .line 136
    invoke-static {v5, v3, v4}, Lcn;->OooO0O0(ILeh;Les;)I

    move-result v3

    goto :goto_2

    .line 137
    :pswitch_34
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    invoke-static {p1, v6, v7}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->OooO0o(IJ)I

    move-result v3

    goto :goto_2

    .line 139
    :pswitch_35
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-static {p1, v6, v7}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->OooO0oo(II)I

    move-result v3

    goto :goto_2

    .line 141
    :pswitch_36
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    invoke-static {v5}, Lcn;->OooOOOo(I)I

    move-result v3

    goto :goto_2

    .line 143
    :pswitch_37
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    invoke-static {v5}, Lcn;->OooOOOO(I)I

    move-result v3

    goto :goto_2

    .line 145
    :pswitch_38
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-static {p1, v6, v7}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->OooO(II)I

    move-result v3

    goto :goto_2

    .line 147
    :pswitch_39
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    invoke-static {p1, v6, v7}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->OooO0oO(II)I

    move-result v3

    goto :goto_2

    .line 149
    :pswitch_3a
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    invoke-static {p1, v6, v7}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lck;

    .line 151
    invoke-static {v5, v3}, Lcn;->OooO0OO(ILck;)I

    move-result v3

    goto :goto_2

    .line 152
    :pswitch_3b
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    invoke-static {p1, v6, v7}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 154
    invoke-direct {p0, v1}, Lek;->OooO00o(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Leu;->OooO00o(ILjava/lang/Object;Les;)I

    move-result v3

    goto/16 :goto_2

    .line 155
    :pswitch_3c
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    invoke-static {p1, v6, v7}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 157
    instance-of v4, v3, Lck;

    if-eqz v4, :cond_2

    .line 158
    check-cast v3, Lck;

    invoke-static {v5, v3}, Lcn;->OooO0OO(ILck;)I

    move-result v3

    goto/16 :goto_2

    .line 159
    :cond_2
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcn;->OooO0O0(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    .line 160
    :pswitch_3d
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    invoke-static {v5}, Lcn;->OooOO0(I)I

    move-result v3

    goto/16 :goto_2

    .line 162
    :pswitch_3e
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    invoke-static {v5}, Lcn;->OooOO0o(I)I

    move-result v3

    goto/16 :goto_2

    .line 164
    :pswitch_3f
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    invoke-static {v5}, Lcn;->OooOOO0(I)I

    move-result v3

    goto/16 :goto_2

    .line 166
    :pswitch_40
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    invoke-static {p1, v6, v7}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->OooO0o(II)I

    move-result v3

    goto/16 :goto_2

    .line 168
    :pswitch_41
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    invoke-static {p1, v6, v7}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->OooO0o0(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 170
    :pswitch_42
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    invoke-static {p1, v6, v7}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->OooO0Oo(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 172
    :pswitch_43
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    invoke-static {v5}, Lcn;->OooOOO(I)I

    move-result v3

    goto/16 :goto_2

    .line 174
    :pswitch_44
    invoke-direct {p0, p1, v1}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    invoke-static {v5}, Lcn;->OooOO0O(I)I

    move-result v3

    goto/16 :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 176
    :cond_4
    iget-object v0, p0, Lek;->o:Lfh;

    .line 177
    invoke-static {v0, p1}, Lek;->OooO00o(Lfh;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO0o(Ljava/lang/Object;J)Z
    .locals 0

    .line 178
    invoke-static {p0, p1, p2}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final OooO0o0(I)I
    .locals 1

    iget-object v0, p0, Lek;->c:[I

    add-int/lit8 p1, p1, 0x1

    .line 178
    aget p1, v0, p1

    return p1
.end method

.method private final OooO0o0(Ljava/lang/Object;)I
    .locals 13

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    const v1, 0xfffff

    const/4 v2, 0x0

    move v6, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v7, p0, Lek;->c:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 1
    invoke-direct {p0, v3}, Lek;->OooO0o0(I)I

    move-result v7

    .line 2
    invoke-direct {p0, v3}, Lek;->OooO0Oo(I)I

    move-result v8

    .line 3
    invoke-static {v7}, Lek;->OooO0oO(I)I

    move-result v9

    const/16 v10, 0x11

    if-gt v9, v10, :cond_0

    iget-object v10, p0, Lek;->c:[I

    add-int/lit8 v11, v3, 0x2

    .line 4
    aget v10, v10, v11

    and-int v11, v10, v1

    ushr-int/lit8 v10, v10, 0x14

    const/4 v12, 0x1

    shl-int v10, v12, v10

    if-eq v11, v6, :cond_1

    int-to-long v5, v11

    .line 5
    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v6, v11

    goto :goto_1

    :cond_0
    move v10, v2

    .line 6
    :cond_1
    :goto_1
    invoke-static {v7}, Lek;->OooO0oo(I)J

    move-result-wide v11

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_4

    .line 7
    :pswitch_0
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 8
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leh;

    .line 9
    invoke-direct {p0, v3}, Lek;->OooO00o(I)Les;

    move-result-object v9

    .line 10
    invoke-static {v8, v7, v9}, Lcn;->OooO0O0(ILeh;Les;)I

    move-result v7

    goto/16 :goto_3

    .line 11
    :pswitch_1
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 12
    invoke-static {p1, v11, v12}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->OooO0o(IJ)I

    move-result v7

    goto/16 :goto_3

    .line 13
    :pswitch_2
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 14
    invoke-static {p1, v11, v12}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->OooO0oo(II)I

    move-result v7

    goto/16 :goto_3

    .line 15
    :pswitch_3
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 16
    invoke-static {v8}, Lcn;->OooOOOo(I)I

    move-result v7

    goto/16 :goto_3

    .line 17
    :pswitch_4
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 18
    invoke-static {v8}, Lcn;->OooOOOO(I)I

    move-result v7

    goto/16 :goto_3

    .line 19
    :pswitch_5
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 20
    invoke-static {p1, v11, v12}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->OooO(II)I

    move-result v7

    goto/16 :goto_3

    .line 21
    :pswitch_6
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 22
    invoke-static {p1, v11, v12}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->OooO0oO(II)I

    move-result v7

    goto/16 :goto_3

    .line 23
    :pswitch_7
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 24
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lck;

    .line 25
    invoke-static {v8, v7}, Lcn;->OooO0OO(ILck;)I

    move-result v7

    goto/16 :goto_3

    .line 26
    :pswitch_8
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 27
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 28
    invoke-direct {p0, v3}, Lek;->OooO00o(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Leu;->OooO00o(ILjava/lang/Object;Les;)I

    move-result v7

    goto/16 :goto_3

    .line 29
    :pswitch_9
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 30
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 31
    instance-of v9, v7, Lck;

    if-eqz v9, :cond_2

    .line 32
    check-cast v7, Lck;

    invoke-static {v8, v7}, Lcn;->OooO0OO(ILck;)I

    move-result v7

    goto/16 :goto_3

    .line 33
    :cond_2
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcn;->OooO0O0(ILjava/lang/String;)I

    move-result v7

    goto/16 :goto_3

    .line 34
    :pswitch_a
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 35
    invoke-static {v8}, Lcn;->OooOO0(I)I

    move-result v7

    goto/16 :goto_3

    .line 36
    :pswitch_b
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 37
    invoke-static {v8}, Lcn;->OooOO0o(I)I

    move-result v7

    goto/16 :goto_3

    .line 38
    :pswitch_c
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 39
    invoke-static {v8}, Lcn;->OooOOO0(I)I

    move-result v7

    goto/16 :goto_3

    .line 40
    :pswitch_d
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 41
    invoke-static {p1, v11, v12}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->OooO0o(II)I

    move-result v7

    goto/16 :goto_3

    .line 42
    :pswitch_e
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 43
    invoke-static {p1, v11, v12}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->OooO0o0(IJ)I

    move-result v7

    goto/16 :goto_3

    .line 44
    :pswitch_f
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 45
    invoke-static {p1, v11, v12}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->OooO0Oo(IJ)I

    move-result v7

    goto/16 :goto_3

    .line 46
    :pswitch_10
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 47
    invoke-static {v8}, Lcn;->OooOOO(I)I

    move-result v7

    goto/16 :goto_3

    .line 48
    :pswitch_11
    invoke-direct {p0, p1, v8, v3}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 49
    invoke-static {v8}, Lcn;->OooOO0O(I)I

    move-result v7

    goto/16 :goto_3

    .line 50
    :pswitch_12
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lek;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v8

    .line 51
    invoke-static {v7, v8}, Lff;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 52
    :pswitch_13
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 53
    invoke-direct {p0, v3}, Lek;->OooO00o(I)Les;

    move-result-object v9

    .line 54
    invoke-static {v8, v7, v9}, Leu;->OooO0O0(ILjava/util/List;Les;)I

    move-result v7

    goto/16 :goto_3

    .line 55
    :pswitch_14
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 56
    invoke-static {v7}, Leu;->OooO0OO(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 57
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 58
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto/16 :goto_2

    .line 59
    :pswitch_15
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 60
    invoke-static {v7}, Leu;->OooO0oO(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 61
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 62
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto/16 :goto_2

    .line 63
    :pswitch_16
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 64
    invoke-static {v7}, Leu;->OooO(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 65
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 66
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto/16 :goto_2

    .line 67
    :pswitch_17
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 68
    invoke-static {v7}, Leu;->OooO0oo(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 69
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 70
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto/16 :goto_2

    .line 71
    :pswitch_18
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 72
    invoke-static {v7}, Leu;->OooO0Oo(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 73
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 74
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto/16 :goto_2

    .line 75
    :pswitch_19
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 76
    invoke-static {v7}, Leu;->OooO0o(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 77
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 78
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto/16 :goto_2

    .line 79
    :pswitch_1a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 80
    invoke-static {v7}, Leu;->OooOO0(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 81
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 82
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto/16 :goto_2

    .line 83
    :pswitch_1b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 84
    invoke-static {v7}, Leu;->OooO0oo(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 85
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 86
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto/16 :goto_2

    .line 87
    :pswitch_1c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 88
    invoke-static {v7}, Leu;->OooO(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 89
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 90
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto :goto_2

    .line 91
    :pswitch_1d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 92
    invoke-static {v7}, Leu;->OooO0o0(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 93
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 94
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto :goto_2

    .line 95
    :pswitch_1e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 96
    invoke-static {v7}, Leu;->OooO0O0(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 97
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 98
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto :goto_2

    .line 99
    :pswitch_1f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 100
    invoke-static {v7}, Leu;->OooO00o(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 101
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 102
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto :goto_2

    .line 103
    :pswitch_20
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 104
    invoke-static {v7}, Leu;->OooO0oo(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 105
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 106
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    goto :goto_2

    .line 107
    :pswitch_21
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 108
    invoke-static {v7}, Leu;->OooO(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 109
    invoke-static {v8}, Lcn;->OooO0Oo(I)I

    move-result v8

    .line 110
    invoke-static {v7}, Lcn;->OooO0o(I)I

    move-result v9

    :goto_2
    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4

    .line 111
    :pswitch_22
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 112
    invoke-static {v8, v7}, Leu;->OooOO0(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    .line 113
    :pswitch_23
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 114
    invoke-static {v8, v7}, Leu;->OooO(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    .line 115
    :pswitch_24
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 116
    invoke-static {v8, v7}, Leu;->OooO0o(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    .line 117
    :pswitch_25
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 118
    invoke-static {v8, v7}, Leu;->OooO0o0(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    .line 119
    :pswitch_26
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 120
    invoke-static {v8, v7}, Leu;->OooO0Oo(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    .line 121
    :pswitch_27
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 122
    invoke-static {v8, v7}, Leu;->OooOO0O(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    .line 123
    :pswitch_28
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 124
    invoke-static {v8, v7}, Leu;->OooO0O0(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    .line 125
    :pswitch_29
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lek;->OooO00o(I)Les;

    move-result-object v9

    .line 126
    invoke-static {v8, v7, v9}, Leu;->OooO00o(ILjava/util/List;Les;)I

    move-result v7

    goto :goto_3

    .line 127
    :pswitch_2a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->OooO00o(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 128
    :pswitch_2b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 129
    invoke-static {v8, v7}, Leu;->OooO0OO(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 130
    :pswitch_2c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 131
    invoke-static {v8, v7}, Leu;->OooO0o0(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 132
    :pswitch_2d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 133
    invoke-static {v8, v7}, Leu;->OooO0o(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 134
    :pswitch_2e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 135
    invoke-static {v8, v7}, Leu;->OooO0oO(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 136
    :pswitch_2f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 137
    invoke-static {v8, v7}, Leu;->OooOO0o(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 138
    :pswitch_30
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 139
    invoke-static {v8, v7}, Leu;->OooO0oo(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 140
    :pswitch_31
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 141
    invoke-static {v8, v7}, Leu;->OooO0o0(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 142
    :pswitch_32
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 143
    invoke-static {v8, v7}, Leu;->OooO0o(ILjava/util/List;)I

    move-result v7

    :goto_3
    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_33
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 144
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leh;

    .line 145
    invoke-direct {p0, v3}, Lek;->OooO00o(I)Les;

    move-result-object v9

    .line 146
    invoke-static {v8, v7, v9}, Lcn;->OooO0O0(ILeh;Les;)I

    move-result v7

    goto :goto_3

    :pswitch_34
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 147
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->OooO0o(IJ)I

    move-result v7

    goto :goto_3

    :pswitch_35
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 148
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->OooO0oo(II)I

    move-result v7

    goto :goto_3

    :pswitch_36
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 149
    invoke-static {v8}, Lcn;->OooOOOo(I)I

    move-result v7

    goto :goto_3

    :pswitch_37
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 150
    invoke-static {v8}, Lcn;->OooOOOO(I)I

    move-result v7

    goto :goto_3

    :pswitch_38
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 151
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->OooO(II)I

    move-result v7

    goto :goto_3

    :pswitch_39
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 152
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->OooO0oO(II)I

    move-result v7

    goto :goto_3

    :pswitch_3a
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 153
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lck;

    .line 154
    invoke-static {v8, v7}, Lcn;->OooO0OO(ILck;)I

    move-result v7

    goto :goto_3

    :pswitch_3b
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 155
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 156
    invoke-direct {p0, v3}, Lek;->OooO00o(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Leu;->OooO00o(ILjava/lang/Object;Les;)I

    move-result v7

    goto :goto_3

    :pswitch_3c
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 157
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 158
    instance-of v9, v7, Lck;

    if-eqz v9, :cond_3

    .line 159
    check-cast v7, Lck;

    invoke-static {v8, v7}, Lcn;->OooO0OO(ILck;)I

    move-result v7

    goto/16 :goto_3

    .line 160
    :cond_3
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcn;->OooO0O0(ILjava/lang/String;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3d
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 161
    invoke-static {v8}, Lcn;->OooOO0(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3e
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 162
    invoke-static {v8}, Lcn;->OooOO0o(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3f
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 163
    invoke-static {v8}, Lcn;->OooOOO0(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_40
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 164
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->OooO0o(II)I

    move-result v7

    goto/16 :goto_3

    :pswitch_41
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 165
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->OooO0o0(IJ)I

    move-result v7

    goto/16 :goto_3

    :pswitch_42
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 166
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->OooO0Oo(IJ)I

    move-result v7

    goto/16 :goto_3

    :pswitch_43
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 167
    invoke-static {v8}, Lcn;->OooOOO(I)I

    move-result v7

    goto/16 :goto_3

    :pswitch_44
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 168
    invoke-static {v8}, Lcn;->OooOO0O(I)I

    move-result v7

    goto/16 :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    .line 169
    :cond_5
    iget-object v0, p0, Lek;->o:Lfh;

    .line 170
    invoke-static {v0, p1}, Lek;->OooO00o(Lfh;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_8

    .line 171
    invoke-static {p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p1

    move v0, v2

    :goto_5
    iget-object v1, p1, Lcu;->a:Lfc;

    .line 172
    invoke-virtual {v1}, Lfc;->OooO00o()I

    move-result v1

    if-ge v2, v1, :cond_6

    iget-object v1, p1, Lcu;->a:Lfc;

    .line 173
    invoke-virtual {v1, v2}, Lfc;->OooO00o(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcu;->OooO0O0(Ldd;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object p1, p1, Lcu;->a:Lfc;

    .line 175
    invoke-virtual {p1}, Lfc;->OooO0O0()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcu;->OooO0O0(Ldd;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_6

    :cond_7
    add-int/2addr v4, v0

    :cond_8
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO0o0(Ljava/lang/Object;J)J
    .locals 0

    .line 177
    invoke-static {p0, p1, p2}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static OooO0oO(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static OooO0oo(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lek;->i:Z

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lek;->OooO0o0(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lek;->OooO0o(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final OooO00o(Ljava/lang/Object;[BIIILby;)I
    .locals 28

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v12, p5

    move-object/from16 v10, p6

    sget-object v11, Lek;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v1, p3

    move/from16 v2, v16

    move v4, v2

    move v6, v4

    const/4 v3, -0x1

    const v7, 0xfffff

    :goto_0
    if-ge v1, v14, :cond_1d

    add-int/lit8 v2, v1, 0x1

    .line 278
    aget-byte v1, v13, v1

    if-gez v1, :cond_0

    .line 279
    invoke-static {v1, v13, v2, v10}, Leb;->OooO00o(I[BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    move v5, v2

    move v2, v1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    ushr-int/lit8 v1, v5, 0x3

    and-int/lit8 v8, v5, 0x7

    const/4 v9, 0x3

    if-le v1, v3, :cond_1

    div-int/2addr v4, v9

    .line 280
    invoke-direct {v15, v1, v4}, Lek;->OooO00o(II)I

    move-result v3

    goto :goto_2

    .line 281
    :cond_1
    invoke-direct {v15, v1}, Lek;->OooO(I)I

    move-result v3

    :goto_2
    const/4 v4, -0x1

    if-eq v3, v4, :cond_17

    .line 282
    iget-object v4, v15, Lek;->c:[I

    add-int/lit8 v19, v3, 0x1

    .line 283
    aget v4, v4, v19

    .line 284
    invoke-static {v4}, Lek;->OooO0oO(I)I

    move-result v9

    move/from16 v20, v1

    move/from16 v19, v2

    .line 285
    invoke-static {v4}, Lek;->OooO0oo(I)J

    move-result-wide v1

    move-wide/from16 v21, v1

    const/16 v1, 0x11

    if-gt v9, v1, :cond_e

    iget-object v1, v15, Lek;->c:[I

    add-int/lit8 v23, v3, 0x2

    .line 286
    aget v1, v1, v23

    ushr-int/lit8 v23, v1, 0x14

    const/4 v2, 0x1

    shl-int v23, v2, v23

    const v12, 0xfffff

    and-int/2addr v1, v12

    if-ne v1, v7, :cond_2

    move/from16 v17, v3

    move/from16 v26, v7

    :goto_3
    move v7, v6

    goto :goto_5

    :cond_2
    if-ne v7, v12, :cond_3

    move/from16 v17, v3

    goto :goto_4

    :cond_3
    move/from16 v17, v3

    int-to-long v2, v7

    .line 287
    invoke-virtual {v11, v0, v2, v3, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4
    int-to-long v2, v1

    .line 288
    invoke-virtual {v11, v0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move/from16 v26, v1

    goto :goto_3

    :goto_5
    const/4 v1, 0x5

    packed-switch v9, :pswitch_data_0

    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x3

    const/16 v17, -0x1

    if-ne v8, v1, :cond_d

    .line 289
    invoke-direct {v15, v9}, Lek;->OooO00o(I)Les;

    move-result-object v1

    shl-int/lit8 v2, v20, 0x3

    or-int/lit8 v8, v2, 0x4

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-wide v13, v5

    move v5, v8

    move-object/from16 v6, p6

    .line 290
    invoke-static/range {v1 .. v6}, Leb;->OooO00o(Les;[BIIILby;)I

    move-result v1

    and-int v2, v7, v23

    if-nez v2, :cond_c

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 291
    invoke-virtual {v11, v0, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_0
    if-nez v8, :cond_4

    move/from16 v2, v19

    .line 292
    invoke-static {v13, v2, v10}, Leb;->OooO0O0([BILby;)I

    move-result v8

    iget-wide v1, v10, Lby;->b:J

    .line 293
    invoke-static {v1, v2}, Lcl;->OooO00o(J)J

    move-result-wide v24

    move/from16 v9, v20

    move-wide/from16 v3, v21

    move-object v1, v11

    move-object/from16 v2, p1

    move/from16 v6, v17

    const/16 v17, -0x1

    move v12, v5

    move v9, v6

    move-wide/from16 v5, v24

    .line 294
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_a

    :cond_4
    move v12, v5

    move/from16 v9, v17

    const/16 v17, -0x1

    move/from16 v3, v19

    goto/16 :goto_e

    :pswitch_1
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/16 v17, -0x1

    if-nez v8, :cond_b

    .line 295
    invoke-static {v13, v2, v10}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    .line 296
    invoke-static {v2}, Lcl;->OooO00o(I)I

    move-result v2

    .line 297
    invoke-virtual {v11, v0, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_2
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/16 v17, -0x1

    if-nez v8, :cond_b

    .line 298
    invoke-static {v13, v2, v10}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    .line 299
    invoke-direct {v15, v9}, Lek;->OooO0OO(I)Ldh;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 300
    invoke-interface {v5, v2}, Ldh;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_6

    .line 301
    :cond_5
    invoke-static/range {p1 .. p1}, Lek;->OooO0Oo(Ljava/lang/Object;)Lfi;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Lfi;->OooO00o(ILjava/lang/Object;)V

    move v6, v7

    goto/16 :goto_c

    .line 302
    :cond_6
    :goto_6
    invoke-virtual {v11, v0, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_3
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-ne v8, v1, :cond_b

    .line 303
    invoke-static {v13, v2, v10}, Leb;->OooO0o0([BILby;)I

    move-result v1

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 304
    invoke-virtual {v11, v0, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_4
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-ne v8, v1, :cond_b

    .line 305
    invoke-direct {v15, v9}, Lek;->OooO00o(I)Les;

    move-result-object v1

    .line 306
    invoke-static {v1, v13, v2, v14, v10}, Leb;->OooO00o(Les;[BIILby;)I

    move-result v1

    and-int v2, v7, v23

    if-nez v2, :cond_7

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 307
    invoke-virtual {v11, v0, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    .line 308
    :cond_7
    invoke-virtual {v11, v0, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, v10, Lby;->c:Ljava/lang/Object;

    .line 309
    invoke-static {v2, v5}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 310
    invoke-virtual {v11, v0, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_5
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-eq v8, v1, :cond_8

    goto/16 :goto_9

    :cond_8
    const/high16 v1, 0x20000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_9

    .line 311
    invoke-static {v13, v2, v10}, Leb;->OooO0Oo([BILby;)I

    move-result v1

    goto :goto_7

    .line 312
    :cond_9
    invoke-static {v13, v2, v10}, Leb;->OooO0OO([BILby;)I

    move-result v1

    .line 313
    :goto_7
    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 314
    invoke-virtual {v11, v0, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_6
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_b

    .line 315
    invoke-static {v13, v2, v10}, Leb;->OooO0O0([BILby;)I

    move-result v1

    iget-wide v2, v10, Lby;->b:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    move/from16 v2, v16

    .line 316
    :goto_8
    invoke-static {v0, v5, v6, v2}, Lfr;->OooO00o(Ljava/lang/Object;JZ)V

    goto/16 :goto_b

    :pswitch_7
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-ne v8, v1, :cond_b

    .line 317
    invoke-static {v13, v2}, Leb;->OooO00o([BI)I

    move-result v1

    invoke-virtual {v11, v0, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v2, 0x4

    goto/16 :goto_b

    :pswitch_8
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x1

    const/16 v17, -0x1

    if-ne v8, v1, :cond_b

    .line 318
    invoke-static {v13, v2}, Leb;->OooO0O0([BI)J

    move-result-wide v18

    move-object v1, v11

    move v8, v2

    move-object/from16 v2, p1

    move-wide v3, v5

    move-wide/from16 v5, v18

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v8, 0x8

    goto/16 :goto_b

    :cond_b
    :goto_9
    move v3, v2

    goto/16 :goto_e

    :pswitch_9
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_d

    .line 319
    invoke-static {v13, v3, v10}, Leb;->OooO00o([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    .line 320
    invoke-virtual {v11, v0, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_a
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_d

    .line 321
    invoke-static {v13, v3, v10}, Leb;->OooO0O0([BILby;)I

    move-result v8

    iget-wide v3, v10, Lby;->b:J

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide/from16 v18, v3

    move-wide v3, v5

    move-wide/from16 v5, v18

    .line 322
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_a
    or-int v6, v7, v23

    move v1, v8

    goto :goto_c

    :pswitch_b
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-ne v8, v1, :cond_d

    .line 323
    invoke-static {v13, v3}, Leb;->OooO0Oo([BI)F

    move-result v1

    invoke-static {v0, v5, v6, v1}, Lfr;->OooO00o(Ljava/lang/Object;JF)V

    add-int/lit8 v1, v3, 0x4

    goto :goto_b

    :pswitch_c
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x1

    const/16 v17, -0x1

    if-ne v8, v1, :cond_d

    .line 324
    invoke-static {v13, v3}, Leb;->OooO0OO([BI)D

    move-result-wide v1

    invoke-static {v0, v5, v6, v1, v2}, Lfr;->OooO00o(Ljava/lang/Object;JD)V

    add-int/lit8 v1, v3, 0x8

    :goto_b
    or-int v6, v7, v23

    :goto_c
    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_0

    .line 325
    :cond_c
    invoke-virtual {v11, v0, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v10, Lby;->c:Ljava/lang/Object;

    .line 326
    invoke-static {v2, v3}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 327
    invoke-virtual {v11, v0, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_d
    or-int v6, v7, v23

    move-object/from16 v13, p2

    move/from16 v14, p4

    goto :goto_c

    :cond_d
    :goto_e
    move-object v8, v0

    move/from16 v22, v7

    move-object v10, v15

    move/from16 v21, v20

    move/from16 v0, p5

    move-object/from16 v27, v11

    move v11, v9

    move-object/from16 v9, v27

    goto/16 :goto_13

    :cond_e
    move v12, v5

    move v2, v9

    move/from16 v5, v20

    move-wide/from16 v13, v21

    const/16 v17, -0x1

    move v9, v3

    move/from16 v3, v19

    const/16 v1, 0x1b

    if-eq v2, v1, :cond_13

    const/16 v1, 0x31

    if-gt v2, v1, :cond_10

    move-object/from16 v18, v11

    int-to-long v10, v4

    move-object/from16 v1, p0

    move/from16 v19, v2

    move-object/from16 v2, p1

    move v4, v3

    move-object/from16 v3, p2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v5, p4

    move/from16 v22, v6

    move v6, v12

    move/from16 v26, v7

    move/from16 v7, v21

    move/from16 p3, v9

    move-object/from16 v0, v18

    move/from16 v23, v12

    move/from16 v0, p5

    move/from16 v12, v19

    move-object/from16 v15, p6

    .line 328
    invoke-direct/range {v1 .. v15}, Lek;->OooO00o(Ljava/lang/Object;[BIIIIIIJIJLby;)I

    move-result v1

    move/from16 v15, v20

    if-eq v1, v15, :cond_f

    :goto_f
    move-object/from16 v15, p0

    move-object/from16 v13, p2

    move/from16 v4, p3

    move/from16 v14, p4

    move-object/from16 v10, p6

    move v12, v0

    move-object/from16 v11, v18

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v2, v23

    move/from16 v7, v26

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v10, p0

    move-object/from16 v8, p1

    move/from16 v11, p3

    move v3, v1

    move-object/from16 v9, v18

    goto/16 :goto_12

    :cond_10
    move/from16 v0, p5

    move/from16 v19, v2

    move v15, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v7

    move/from16 p3, v9

    move-object/from16 v18, v11

    move/from16 v23, v12

    const/16 v1, 0x32

    move/from16 v10, v19

    if-eq v10, v1, :cond_11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v9, v4

    move v4, v15

    move/from16 v5, p4

    move/from16 v6, v23

    move/from16 v7, v21

    move-wide v11, v13

    move/from16 v13, p3

    move-object/from16 v14, p6

    .line 329
    invoke-direct/range {v1 .. v14}, Lek;->OooO00o(Ljava/lang/Object;[BIIIIIIIJILby;)I

    move-result v1

    if-eq v1, v15, :cond_f

    goto :goto_f

    :cond_11
    const/4 v1, 0x2

    if-eq v8, v1, :cond_12

    goto/16 :goto_11

    :cond_12
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, p4

    move/from16 v6, p3

    move-wide v7, v13

    move-object/from16 v9, p6

    .line 330
    invoke-direct/range {v1 .. v9}, Lek;->OooO00o(Ljava/lang/Object;[BIIIJLby;)I

    move-result v1

    if-eq v1, v15, :cond_f

    goto :goto_f

    :cond_13
    move/from16 v0, p5

    move v15, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v7

    move/from16 p3, v9

    move-object/from16 v18, v11

    move/from16 v23, v12

    const/4 v1, 0x2

    if-ne v8, v1, :cond_16

    move-object/from16 v8, p1

    move-object/from16 v9, v18

    .line 331
    invoke-virtual {v9, v8, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldi;

    .line 332
    invoke-interface {v1}, Ldi;->a()Z

    move-result v2

    if-nez v2, :cond_15

    .line 333
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_14

    add-int/2addr v2, v2

    goto :goto_10

    :cond_14
    const/16 v2, 0xa

    .line 334
    :goto_10
    invoke-interface {v1, v2}, Ldi;->a(I)Ldi;

    move-result-object v1

    .line 335
    invoke-virtual {v9, v8, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_15
    move-object/from16 v10, p0

    move/from16 v11, p3

    move-object v6, v1

    .line 336
    invoke-direct {v10, v11}, Lek;->OooO00o(I)Les;

    move-result-object v1

    move/from16 v2, v23

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, p4

    move-object/from16 v7, p6

    .line 337
    invoke-static/range {v1 .. v7}, Leb;->OooO00o(Les;I[BIILdi;Lby;)I

    move-result v1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move v12, v0

    move-object v0, v8

    move-object v15, v10

    move v4, v11

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v7, v26

    move-object/from16 v10, p6

    goto/16 :goto_17

    :cond_16
    :goto_11
    move-object/from16 v10, p0

    move-object/from16 v8, p1

    move/from16 v11, p3

    move-object/from16 v9, v18

    move v3, v15

    :goto_12
    move/from16 v12, v23

    goto :goto_13

    :cond_17
    move-object v8, v0

    move/from16 v21, v1

    move/from16 v17, v4

    move/from16 v22, v6

    move/from16 v26, v7

    move-object v9, v11

    move v0, v12

    move-object v10, v15

    move v15, v2

    move v12, v5

    move v3, v15

    move/from16 v11, v16

    :goto_13
    if-eq v12, v0, :cond_18

    goto :goto_14

    :cond_18
    if-eqz v0, :cond_19

    move v1, v3

    move v2, v12

    move/from16 v6, v22

    move/from16 v7, v26

    goto/16 :goto_18

    .line 338
    :cond_19
    :goto_14
    iget-boolean v1, v10, Lek;->h:Z

    if-nez v1, :cond_1b

    move-object/from16 v13, p6

    :cond_1a
    move/from16 v14, v21

    goto :goto_15

    :cond_1b
    move-object/from16 v13, p6

    .line 339
    iget-object v1, v13, Lby;->d:Lcs;

    .line 340
    invoke-static {}, Lcs;->OooO00o()Lcs;

    move-result-object v2

    if-eq v1, v2, :cond_1a

    iget-object v1, v10, Lek;->g:Leh;

    iget-object v2, v13, Lby;->d:Lcs;

    move/from16 v14, v21

    .line 341
    invoke-virtual {v2, v1, v14}, Lcs;->OooO00o(Leh;I)Lcq;

    move-result-object v6

    if-nez v6, :cond_1c

    .line 342
    invoke-static/range {p1 .. p1}, Lek;->OooO0Oo(Ljava/lang/Object;)Lfi;

    move-result-object v5

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 343
    invoke-static/range {v1 .. v6}, Leb;->OooO00o(I[BIILfi;Lby;)I

    move-result v1

    goto :goto_16

    .line 344
    :cond_1c
    move-object v5, v8

    check-cast v5, Ldc;

    invoke-virtual {v5}, Ldc;->d()Lcu;

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    .line 345
    invoke-static/range {v1 .. v7}, Leb;->OooO00o(I[BIILdc;Lcq;Lby;)I

    move-result v1

    goto :goto_16

    .line 346
    :goto_15
    invoke-static/range {p1 .. p1}, Lek;->OooO0Oo(Ljava/lang/Object;)Lfi;

    move-result-object v5

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 347
    invoke-static/range {v1 .. v6}, Leb;->OooO00o(I[BIILfi;Lby;)I

    move-result v1

    :goto_16
    move-object v15, v10

    move v4, v11

    move v2, v12

    move-object v10, v13

    move v3, v14

    move/from16 v6, v22

    move/from16 v7, v26

    move-object/from16 v13, p2

    move/from16 v14, p4

    move v12, v0

    move-object v0, v8

    :goto_17
    move-object v11, v9

    goto/16 :goto_0

    :cond_1d
    move-object v8, v0

    move/from16 v22, v6

    move/from16 v26, v7

    move-object v9, v11

    move v0, v12

    move-object v10, v15

    :goto_18
    const v3, 0xfffff

    if-ne v7, v3, :cond_1e

    goto :goto_19

    :cond_1e
    int-to-long v3, v7

    .line 348
    invoke-virtual {v9, v8, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 349
    :goto_19
    iget v3, v10, Lek;->l:I

    const/4 v4, 0x0

    :goto_1a
    iget v5, v10, Lek;->m:I

    if-ge v3, v5, :cond_23

    iget-object v5, v10, Lek;->k:[I

    .line 350
    aget v5, v5, v3

    .line 351
    invoke-direct {v10, v5}, Lek;->OooO0Oo(I)I

    move-result v6

    .line 352
    invoke-direct {v10, v5}, Lek;->OooO0o0(I)I

    move-result v7

    invoke-static {v7}, Lek;->OooO0oo(I)J

    move-result-wide v11

    .line 353
    invoke-static {v8, v11, v12}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1f

    goto :goto_1d

    .line 354
    :cond_1f
    invoke-direct {v10, v5}, Lek;->OooO0OO(I)Ldh;

    move-result-object v9

    if-eqz v9, :cond_22

    .line 355
    invoke-static {v7}, Lff;->OooO0OO(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 356
    invoke-direct {v10, v5}, Lek;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lff;->OooO0O0(Ljava/lang/Object;)Lea;

    move-result-object v5

    .line 357
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_20
    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_22

    .line 358
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, v12}, Ldh;->a(I)Z

    move-result v12

    if-nez v12, :cond_20

    if-eqz v4, :cond_21

    goto :goto_1c

    .line 360
    :cond_21
    invoke-static {}, Lfh;->OooO00o()Ljava/lang/Object;

    move-result-object v4

    .line 361
    :goto_1c
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v5, v12, v13}, Leb;->OooO00o(Lea;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 362
    invoke-static {v12}, Lck;->OooO0OO(I)Lcg;

    move-result-object v12

    iget-object v13, v12, Lcg;->a:Lcn;

    .line 363
    :try_start_0
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v13, v5, v14, v11}, Leb;->OooO00o(Lcn;Lea;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    invoke-virtual {v12}, Lcg;->OooO00o()Lck;

    move-result-object v11

    invoke-static {v4, v6, v11}, Lfh;->OooO00o(Ljava/lang/Object;ILck;)V

    .line 365
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Ljava/lang/RuntimeException;

    .line 367
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_22
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1a

    :cond_23
    if-eqz v4, :cond_24

    .line 368
    iget-object v3, v10, Lek;->o:Lfh;

    .line 369
    invoke-virtual {v3, v8, v4}, Lfh;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    if-eqz v0, :cond_26

    move/from16 v3, p4

    if-gt v1, v3, :cond_25

    if-ne v2, v0, :cond_25

    goto :goto_1e

    .line 370
    :cond_25
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object v0

    throw v0

    :cond_26
    move/from16 v3, p4

    if-ne v1, v3, :cond_27

    :goto_1e
    return v1

    .line 371
    :cond_27
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO00o(Ljava/lang/Object;Lgb;)V
    .locals 12

    iget-boolean v0, p0, Lek;->i:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lek;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Lcu;->OooO00o()Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    invoke-virtual {v0}, Lcu;->OooO0Oo()Ljava/util/Iterator;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lek;->c:[I

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    .line 505
    invoke-direct {p0, v5}, Lek;->OooO0o0(I)I

    move-result v6

    .line 506
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    :goto_2
    if-nez v2, :cond_1

    goto :goto_3

    .line 507
    :cond_1
    invoke-static {v2}, Lej;->OooO00o(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_3

    .line 508
    invoke-static {p2, v2}, Lej;->OooO00o(Lgb;Ljava/util/Map$Entry;)V

    .line 509
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_2

    .line 510
    :cond_3
    :goto_3
    invoke-static {v6}, Lek;->OooO0oO(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_4

    .line 511
    :pswitch_0
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 512
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 513
    invoke-direct {p0, v5}, Lek;->OooO00o(I)Les;

    move-result-object v8

    .line 514
    invoke-interface {p2, v7, v6, v8}, Lgb;->OooO00o(ILjava/lang/Object;Les;)V

    goto/16 :goto_4

    .line 515
    :pswitch_1
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 516
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0OO(IJ)V

    goto/16 :goto_4

    .line 517
    :pswitch_2
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 518
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0Oo(II)V

    goto/16 :goto_4

    .line 519
    :pswitch_3
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 520
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0o0(IJ)V

    goto/16 :goto_4

    .line 521
    :pswitch_4
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 522
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0o0(II)V

    goto/16 :goto_4

    .line 523
    :pswitch_5
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 524
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0o(II)V

    goto/16 :goto_4

    .line 525
    :pswitch_6
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 526
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0OO(II)V

    goto/16 :goto_4

    .line 527
    :pswitch_7
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 528
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lck;

    .line 529
    invoke-interface {p2, v7, v6}, Lgb;->OooO00o(ILck;)V

    goto/16 :goto_4

    .line 530
    :pswitch_8
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 531
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 532
    invoke-direct {p0, v5}, Lek;->OooO00o(I)Les;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lgb;->OooO0O0(ILjava/lang/Object;Les;)V

    goto/16 :goto_4

    .line 533
    :pswitch_9
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 534
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lek;->OooO00o(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_4

    .line 535
    :pswitch_a
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 536
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0o(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO00o(IZ)V

    goto/16 :goto_4

    .line 537
    :pswitch_b
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 538
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO0O0(II)V

    goto/16 :goto_4

    .line 539
    :pswitch_c
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 540
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0O0(IJ)V

    goto/16 :goto_4

    .line 541
    :pswitch_d
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 542
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO00o(II)V

    goto/16 :goto_4

    .line 543
    :pswitch_e
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 544
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO00o(IJ)V

    goto/16 :goto_4

    .line 545
    :pswitch_f
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 546
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0Oo(IJ)V

    goto/16 :goto_4

    .line 547
    :pswitch_10
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 548
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0OO(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->OooO00o(IF)V

    goto/16 :goto_4

    .line 549
    :pswitch_11
    invoke-direct {p0, p1, v7, v5}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 550
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->OooO0O0(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO00o(ID)V

    goto/16 :goto_4

    .line 551
    :pswitch_12
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v5}, Lek;->OooO00o(Lgb;ILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 552
    :pswitch_13
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 553
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 554
    invoke-direct {p0, v5}, Lek;->OooO00o(I)Les;

    move-result-object v8

    .line 555
    invoke-static {v7, v6, p2, v8}, Leu;->OooO0O0(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_4

    .line 556
    :pswitch_14
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 557
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 558
    invoke-static {v7, v6, p2, v9}, Leu;->OooO0o0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 559
    :pswitch_15
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 560
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 561
    invoke-static {v7, v6, p2, v9}, Leu;->OooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 562
    :pswitch_16
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 563
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 564
    invoke-static {v7, v6, p2, v9}, Leu;->OooO0oO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 565
    :pswitch_17
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 566
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 567
    invoke-static {v7, v6, p2, v9}, Leu;->OooOO0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 568
    :pswitch_18
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 569
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 570
    invoke-static {v7, v6, p2, v9}, Leu;->OooOOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 571
    :pswitch_19
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 572
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 573
    invoke-static {v7, v6, p2, v9}, Leu;->OooO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 574
    :pswitch_1a
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 575
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 576
    invoke-static {v7, v6, p2, v9}, Leu;->OooOOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 577
    :pswitch_1b
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 578
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 579
    invoke-static {v7, v6, p2, v9}, Leu;->OooOO0O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 580
    :pswitch_1c
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 581
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 582
    invoke-static {v7, v6, p2, v9}, Leu;->OooO0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 583
    :pswitch_1d
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 584
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 585
    invoke-static {v7, v6, p2, v9}, Leu;->OooO0oo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 586
    :pswitch_1e
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 587
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 588
    invoke-static {v7, v6, p2, v9}, Leu;->OooO0Oo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 589
    :pswitch_1f
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 590
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 591
    invoke-static {v7, v6, p2, v9}, Leu;->OooO0OO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 592
    :pswitch_20
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 593
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 594
    invoke-static {v7, v6, p2, v9}, Leu;->OooO0O0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 595
    :pswitch_21
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 596
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 597
    invoke-static {v7, v6, p2, v9}, Leu;->OooO00o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 598
    :pswitch_22
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 599
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 600
    invoke-static {v7, v6, p2, v4}, Leu;->OooO0o0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 601
    :pswitch_23
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 602
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 603
    invoke-static {v7, v6, p2, v4}, Leu;->OooOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 604
    :pswitch_24
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 605
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 606
    invoke-static {v7, v6, p2, v4}, Leu;->OooO0oO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 607
    :pswitch_25
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 608
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 609
    invoke-static {v7, v6, p2, v4}, Leu;->OooOO0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 610
    :pswitch_26
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 611
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 612
    invoke-static {v7, v6, p2, v4}, Leu;->OooOOO0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 613
    :pswitch_27
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 614
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 615
    invoke-static {v7, v6, p2, v4}, Leu;->OooO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 616
    :pswitch_28
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 617
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 618
    invoke-static {v7, v6, p2}, Leu;->OooO0O0(ILjava/util/List;Lgb;)V

    goto/16 :goto_4

    .line 619
    :pswitch_29
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 620
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 621
    invoke-direct {p0, v5}, Lek;->OooO00o(I)Les;

    move-result-object v8

    .line 622
    invoke-static {v7, v6, p2, v8}, Leu;->OooO00o(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_4

    .line 623
    :pswitch_2a
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 624
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 625
    invoke-static {v7, v6, p2}, Leu;->OooO00o(ILjava/util/List;Lgb;)V

    goto/16 :goto_4

    .line 626
    :pswitch_2b
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 627
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 628
    invoke-static {v7, v6, p2, v4}, Leu;->OooOOO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 629
    :pswitch_2c
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 630
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 631
    invoke-static {v7, v6, p2, v4}, Leu;->OooOO0O(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 632
    :pswitch_2d
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 633
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 634
    invoke-static {v7, v6, p2, v4}, Leu;->OooO0o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 635
    :pswitch_2e
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 636
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 637
    invoke-static {v7, v6, p2, v4}, Leu;->OooO0oo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 638
    :pswitch_2f
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 639
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 640
    invoke-static {v7, v6, p2, v4}, Leu;->OooO0Oo(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 641
    :pswitch_30
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 642
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 643
    invoke-static {v7, v6, p2, v4}, Leu;->OooO0OO(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 644
    :pswitch_31
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 645
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 646
    invoke-static {v7, v6, p2, v4}, Leu;->OooO0O0(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 647
    :pswitch_32
    invoke-direct {p0, v5}, Lek;->OooO0Oo(I)I

    move-result v7

    .line 648
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 649
    invoke-static {v7, v6, p2, v4}, Leu;->OooO00o(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_4

    .line 650
    :pswitch_33
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 651
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 652
    invoke-direct {p0, v5}, Lek;->OooO00o(I)Les;

    move-result-object v8

    .line 653
    invoke-interface {p2, v7, v6, v8}, Lgb;->OooO00o(ILjava/lang/Object;Les;)V

    goto/16 :goto_4

    .line 654
    :pswitch_34
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 655
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 656
    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 657
    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0OO(IJ)V

    goto/16 :goto_4

    .line 658
    :pswitch_35
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 659
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 660
    invoke-static {p1, v8, v9}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v6

    .line 661
    invoke-interface {p2, v7, v6}, Lgb;->OooO0Oo(II)V

    goto/16 :goto_4

    .line 662
    :pswitch_36
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 663
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 664
    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 665
    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0o0(IJ)V

    goto/16 :goto_4

    .line 666
    :pswitch_37
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 667
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 668
    invoke-static {p1, v8, v9}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v6

    .line 669
    invoke-interface {p2, v7, v6}, Lgb;->OooO0o0(II)V

    goto/16 :goto_4

    .line 670
    :pswitch_38
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 671
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 672
    invoke-static {p1, v8, v9}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v6

    .line 673
    invoke-interface {p2, v7, v6}, Lgb;->OooO0o(II)V

    goto/16 :goto_4

    .line 674
    :pswitch_39
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 675
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 676
    invoke-static {p1, v8, v9}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v6

    .line 677
    invoke-interface {p2, v7, v6}, Lgb;->OooO0OO(II)V

    goto/16 :goto_4

    .line 678
    :pswitch_3a
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 679
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lck;

    .line 680
    invoke-interface {p2, v7, v6}, Lgb;->OooO00o(ILck;)V

    goto/16 :goto_4

    .line 681
    :pswitch_3b
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 682
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 683
    invoke-direct {p0, v5}, Lek;->OooO00o(I)Les;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lgb;->OooO0O0(ILjava/lang/Object;Les;)V

    goto/16 :goto_4

    .line 684
    :pswitch_3c
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 685
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lek;->OooO00o(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_4

    .line 686
    :pswitch_3d
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 687
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 688
    invoke-static {p1, v8, v9}, Lfr;->OooO0OO(Ljava/lang/Object;J)Z

    move-result v6

    .line 689
    invoke-interface {p2, v7, v6}, Lgb;->OooO00o(IZ)V

    goto/16 :goto_4

    .line 690
    :pswitch_3e
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 691
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 692
    invoke-static {p1, v8, v9}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v6

    .line 693
    invoke-interface {p2, v7, v6}, Lgb;->OooO0O0(II)V

    goto :goto_4

    .line 694
    :pswitch_3f
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 695
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 696
    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 697
    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0O0(IJ)V

    goto :goto_4

    .line 698
    :pswitch_40
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 699
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 700
    invoke-static {p1, v8, v9}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v6

    .line 701
    invoke-interface {p2, v7, v6}, Lgb;->OooO00o(II)V

    goto :goto_4

    .line 702
    :pswitch_41
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 703
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 704
    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 705
    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO00o(IJ)V

    goto :goto_4

    .line 706
    :pswitch_42
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 707
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 708
    invoke-static {p1, v8, v9}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 709
    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO0Oo(IJ)V

    goto :goto_4

    .line 710
    :pswitch_43
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 711
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 712
    invoke-static {p1, v8, v9}, Lfr;->OooO0Oo(Ljava/lang/Object;J)F

    move-result v6

    .line 713
    invoke-interface {p2, v7, v6}, Lgb;->OooO00o(IF)V

    goto :goto_4

    .line 714
    :pswitch_44
    invoke-direct {p0, p1, v5}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 715
    invoke-static {v6}, Lek;->OooO0oo(I)J

    move-result-wide v8

    .line 716
    invoke-static {p1, v8, v9}, Lfr;->OooO0o0(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 717
    invoke-interface {p2, v7, v8, v9}, Lgb;->OooO00o(ID)V

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_5
    :goto_5
    if-eqz v2, :cond_7

    .line 718
    invoke-static {p2, v2}, Lej;->OooO00o(Lgb;Ljava/util/Map$Entry;)V

    .line 719
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_6
    move-object v2, v1

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lek;->o:Lfh;

    .line 720
    invoke-static {v0, p1, p2}, Lek;->OooO00o(Lfh;Ljava/lang/Object;Lgb;)V

    return-void

    .line 721
    :cond_8
    invoke-direct {p0, p1, p2}, Lek;->OooO0O0(Ljava/lang/Object;Lgb;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO00o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lek;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 44
    invoke-direct {p0, v0}, Lek;->OooO0o0(I)I

    move-result v1

    .line 45
    invoke-static {v1}, Lek;->OooO0oo(I)J

    move-result-wide v2

    .line 46
    invoke-direct {p0, v0}, Lek;->OooO0Oo(I)I

    move-result v4

    .line 47
    invoke-static {v1}, Lek;->OooO0oO(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 48
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lek;->OooO0O0(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 49
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p2, v2, v3}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51
    invoke-direct {p0, p1, v4, v0}, Lek;->OooO0O0(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 52
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lek;->OooO0O0(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 53
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p2, v2, v3}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 55
    invoke-direct {p0, p1, v4, v0}, Lek;->OooO0O0(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lek;->r:Lff;

    .line 56
    invoke-static {v1, p1, p2, v2, v3}, Leu;->OooO00o(Lff;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lek;->n:Ldv;

    .line 57
    invoke-virtual {v1, p1, p2, v2, v3}, Ldv;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 58
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 59
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;JJ)V

    .line 61
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 62
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {p2, v2, v3}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JI)V

    .line 64
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 65
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;JJ)V

    .line 67
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 68
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p2, v2, v3}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JI)V

    .line 70
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 71
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p2, v2, v3}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JI)V

    .line 73
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 74
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p2, v2, v3}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JI)V

    .line 76
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 77
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {p2, v2, v3}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 79
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 80
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 81
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {p2, v2, v3}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 83
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 84
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {p2, v2, v3}, Lfr;->OooO0OO(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JZ)V

    .line 86
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 87
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {p2, v2, v3}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JI)V

    .line 89
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto :goto_1

    .line 90
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;JJ)V

    .line 92
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto :goto_1

    .line 93
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {p2, v2, v3}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JI)V

    .line 95
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto :goto_1

    .line 96
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;JJ)V

    .line 98
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto :goto_1

    .line 99
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {p2, v2, v3}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;JJ)V

    .line 101
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto :goto_1

    .line 102
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {p2, v2, v3}, Lfr;->OooO0Oo(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->OooO00o(Ljava/lang/Object;JF)V

    .line 104
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    goto :goto_1

    .line 105
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lek;->OooO00o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {p2, v2, v3}, Lfr;->OooO0o0(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;JD)V

    .line 107
    invoke-direct {p0, p1, v0}, Lek;->OooO0O0(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lek;->o:Lfh;

    .line 108
    invoke-static {v0, p1, p2}, Leu;->OooO00o(Lfh;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lek;->p:Lej;

    .line 109
    invoke-static {v0, p1, p2}, Leu;->OooO00o(Lej;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 110
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO00o(Ljava/lang/Object;[BIILby;)V
    .locals 8

    iget-boolean v0, p0, Lek;->i:Z

    if-nez v0, :cond_0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 111
    invoke-virtual/range {v1 .. v7}, Lek;->OooO00o(Ljava/lang/Object;[BIIILby;)I

    return-void

    .line 112
    :cond_0
    invoke-direct/range {p0 .. p5}, Lek;->OooO0O0(Ljava/lang/Object;[BIILby;)V

    return-void
.end method

.method public final OooO0O0(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    move v0, v8

    move v1, v9

    move v10, v1

    :goto_0
    iget v2, v6, Lek;->l:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lek;->k:[I

    .line 62
    aget v11, v2, v10

    .line 63
    invoke-direct {v6, v11}, Lek;->OooO0Oo(I)I

    move-result v12

    .line 64
    invoke-direct {v6, v11}, Lek;->OooO0o0(I)I

    move-result v13

    iget-object v2, v6, Lek;->c:[I

    add-int/lit8 v4, v11, 0x2

    .line 65
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-ne v4, v0, :cond_0

    move v15, v0

    move/from16 v16, v1

    goto :goto_1

    :cond_0
    if-eq v4, v8, :cond_1

    .line 66
    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 67
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_1
    move/from16 v16, v1

    move v15, v4

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 68
    invoke-direct/range {v0 .. v5}, Lek;->OooO00o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    return v9

    .line 69
    :cond_3
    :goto_2
    invoke-static {v13}, Lek;->OooO0oO(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    .line 70
    :cond_4
    invoke-static {v13}, Lek;->OooO0oo(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lff;->OooO00o(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 72
    :cond_5
    invoke-direct {v6, v11}, Lek;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lff;->OooO0O0(Ljava/lang/Object;)Lea;

    move-result-object v0

    .line 74
    iget-object v0, v0, Lea;->c:Lfy;

    const/4 v0, 0x0

    throw v0

    .line 75
    :cond_6
    invoke-direct {v6, v7, v12, v11}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    invoke-direct {v6, v11}, Lek;->OooO00o(I)Les;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lek;->OooO00o(Ljava/lang/Object;ILes;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    .line 77
    :cond_7
    invoke-static {v13}, Lek;->OooO0oo(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 79
    invoke-direct {v6, v11}, Lek;->OooO00o(I)Les;

    move-result-object v1

    move v2, v9

    .line 80
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 82
    invoke-interface {v1, v3}, Les;->OooO0O0(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return v9

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 83
    invoke-direct/range {v0 .. v5}, Lek;->OooO00o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 84
    invoke-direct {v6, v11}, Lek;->OooO00o(I)Les;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lek;->OooO00o(Ljava/lang/Object;ILes;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    .line 85
    :cond_b
    iget-boolean v0, v6, Lek;->h:Z

    if-eqz v0, :cond_c

    .line 86
    invoke-static/range {p1 .. p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object v0

    invoke-virtual {v0}, Lcu;->OooO0o0()Z

    move-result v0

    if-nez v0, :cond_c

    return v9

    :cond_c
    return v3
.end method

.method public final OooO0O0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lek;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1
    invoke-direct {p0, v2}, Lek;->OooO0o0(I)I

    move-result v3

    .line 2
    invoke-static {v3}, Lek;->OooO0oo(I)J

    move-result-wide v4

    .line 3
    invoke-static {v3}, Lek;->OooO0oO(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 4
    :pswitch_0
    invoke-direct {p0, v2}, Lek;->OooO0o(I)I

    move-result v3

    const v6, 0xfffff

    and-int/2addr v3, v6

    int-to-long v6, v3

    .line 5
    invoke-static {p1, v6, v7}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    .line 6
    invoke-static {p2, v6, v7}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 7
    invoke-static {p1, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v3, v4}, Leu;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 9
    :pswitch_1
    invoke-static {p1, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Leu;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 11
    :pswitch_2
    invoke-static {p1, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 12
    invoke-static {v3, v4}, Leu;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 13
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    invoke-static {p1, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 15
    invoke-static {v3, v4}, Leu;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 16
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 18
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-static {p1, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 20
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 22
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    invoke-static {p1, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 24
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    invoke-static {p1, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 26
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    invoke-static {p1, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 28
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-static {p1, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 30
    invoke-static {v3, v4}, Leu;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 31
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    invoke-static {p1, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 33
    invoke-static {v3, v4}, Leu;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 34
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-static {p1, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 36
    invoke-static {v3, v4}, Leu;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 37
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-static {p1, v4, v5}, Lfr;->OooO0OO(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO0OO(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 39
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-static {p1, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 41
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 43
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-static {p1, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 45
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 47
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-static {p1, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 49
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-static {p1, v4, v5}, Lfr;->OooO0Oo(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 51
    invoke-static {p2, v4, v5}, Lfr;->OooO0Oo(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 52
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lek;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-static {p1, v4, v5}, Lfr;->OooO0o0(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 54
    invoke-static {p2, v4, v5}, Lfr;->OooO0o0(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lek;->o:Lfh;

    .line 55
    invoke-virtual {v0, p1}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lek;->o:Lfh;

    .line 56
    invoke-virtual {v2, p2}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_3

    .line 58
    invoke-static {p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p1

    .line 59
    invoke-static {p2}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO0OO(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lek;->l:I

    :goto_0
    iget v1, p0, Lek;->m:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lek;->k:[I

    .line 3
    aget v1, v1, v0

    invoke-direct {p0, v1}, Lek;->OooO0o0(I)I

    move-result v1

    invoke-static {v1}, Lek;->OooO0oo(I)J

    move-result-wide v1

    .line 4
    invoke-static {p1, v1, v2}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v3}, Lff;->OooO0o0(Ljava/lang/Object;)V

    invoke-static {p1, v1, v2, v3}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lek;->k:[I

    .line 6
    array-length v0, v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lek;->n:Ldv;

    iget-object v3, p0, Lek;->k:[I

    .line 7
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Ldv;->OooO00o(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lek;->o:Lfh;

    .line 8
    invoke-virtual {v0, p1}, Lfh;->OooO00o(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lek;->p:Lej;

    .line 9
    invoke-virtual {v0, p1}, Lej;->OooO00o(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lek;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1
    invoke-direct {p0, v1}, Lek;->OooO0o0(I)I

    move-result v3

    .line 2
    invoke-direct {p0, v1}, Lek;->OooO0Oo(I)I

    move-result v4

    .line 3
    invoke-static {v3}, Lek;->OooO0oo(I)J

    move-result-wide v5

    .line 4
    invoke-static {v3}, Lek;->OooO0oO(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 5
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 6
    invoke-static {p1, v5, v6}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 8
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 9
    invoke-static {p1, v5, v6}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto/16 :goto_2

    .line 10
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 11
    invoke-static {p1, v5, v6}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 12
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 13
    invoke-static {p1, v5, v6}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto/16 :goto_2

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 15
    invoke-static {p1, v5, v6}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 17
    invoke-static {p1, v5, v6}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 19
    invoke-static {p1, v5, v6}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 21
    invoke-static {p1, v5, v6}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 23
    invoke-static {p1, v5, v6}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 25
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 26
    invoke-static {p1, v5, v6}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 27
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 28
    invoke-static {p1, v5, v6}, Lek;->OooO0o(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldj;->OooO00o(Z)I

    move-result v3

    goto/16 :goto_2

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 30
    invoke-static {p1, v5, v6}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 31
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 32
    invoke-static {p1, v5, v6}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto/16 :goto_2

    .line 33
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 34
    invoke-static {p1, v5, v6}, Lek;->OooO0Oo(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 35
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 36
    invoke-static {p1, v5, v6}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto/16 :goto_2

    .line 37
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 38
    invoke-static {p1, v5, v6}, Lek;->OooO0o0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto/16 :goto_2

    .line 39
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 40
    invoke-static {p1, v5, v6}, Lek;->OooO0OO(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 41
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lek;->OooO00o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lek;->OooO0O0(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 44
    invoke-static {p1, v5, v6}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 45
    :pswitch_14
    invoke-static {p1, v5, v6}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 53
    invoke-static {p1, v5, v6}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 54
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lfr;->OooO0OO(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldj;->OooO00o(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lfr;->OooO00o(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lfr;->OooO0O0(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lfr;->OooO0Oo(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 64
    invoke-static {p1, v5, v6}, Lfr;->OooO0o0(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 65
    invoke-static {v3, v4}, Ldj;->OooO00o(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lek;->o:Lfh;

    .line 66
    invoke-virtual {v0, p1}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    .line 67
    invoke-static {p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p1

    invoke-virtual {p1}, Lcu;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lek;->g:Leh;

    .line 68
    invoke-static {v0}, Lfs;->OooO00o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
