.class Landroid/net/apf/ApfFilter$Ra;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ra"
.end annotation


# static fields
.field private static final ICMP6_4_BYTE_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_4_BYTE_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_DNSSL_OPTION_TYPE:I = 0x1f

.field private static final ICMP6_PREFIX_OPTION_LEN:I = 0x20

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_OFFSET:I = 0x8

.field private static final ICMP6_PREFIX_OPTION_TYPE:I = 0x3

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_RA_CHECKSUM_LEN:I = 0x2

.field private static final ICMP6_RA_CHECKSUM_OFFSET:I = 0x38

.field private static final ICMP6_RA_HEADER_LEN:I = 0x10

.field private static final ICMP6_RA_OPTION_OFFSET:I = 0x46

.field private static final ICMP6_RA_ROUTER_LIFETIME_LEN:I = 0x2

.field private static final ICMP6_RA_ROUTER_LIFETIME_OFFSET:I = 0x3c

.field private static final ICMP6_RDNSS_OPTION_TYPE:I = 0x19

.field private static final ICMP6_ROUTE_INFO_OPTION_TYPE:I = 0x18


# instance fields
.field mLastSeen:J

.field mMinLifetime:J

.field private final mNonLifetimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mPrefixOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRdnssOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field seenCount:I

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfFilter;[BI)V
    .locals 12
    .param p1, "this$0"    # Landroid/net/apf/ApfFilter;
    .param p2, "packet"    # [B
    .param p3, "length"    # I

    .prologue
    .line 439
    iput-object p1, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 327
    iput-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    .line 335
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    .line 338
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    .line 341
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    .line 440
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    .line 441
    invoke-static {}, Landroid/net/apf/ApfFilter;->-wrap3()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    .line 445
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v8, 0xc

    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap4(Ljava/nio/ByteBuffer;I)J

    move-result-wide v8

    sget v7, Landroid/system/OsConstants;->ETH_P_IPV6:I

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 446
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    move-result v7

    sget v8, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    if-eq v7, v8, :cond_1

    .line 448
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Not an ICMP6 router advertisement"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 447
    :cond_1
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v8, 0x36

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    move-result v7

    const/16 v8, 0x86

    if-ne v7, v8, :cond_0

    .line 452
    new-instance v0, Landroid/net/metrics/RaEvent$Builder;

    invoke-direct {v0}, Landroid/net/metrics/RaEvent$Builder;-><init>()V

    .line 455
    .local v0, "builder":Landroid/net/metrics/RaEvent$Builder;
    const/4 v7, 0x0

    .line 456
    const/16 v8, 0x38

    .line 457
    const/4 v9, 0x2

    .line 455
    invoke-direct {p0, v7, v8, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v1

    .line 461
    .local v1, "lastNonLifetimeStart":I
    const/16 v7, 0x3c

    .line 462
    const/4 v8, 0x2

    .line 460
    invoke-direct {p0, v1, v7, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v1

    .line 463
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v8, 0x3c

    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap4(Ljava/nio/ByteBuffer;I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/net/metrics/RaEvent$Builder;->updateRouterLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    .line 466
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v8, 0x46

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 467
    :goto_0
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 468
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 469
    .local v6, "position":I
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    move-result v5

    .line 470
    .local v5, "optionType":I
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    move-result v7

    mul-int/lit8 v4, v7, 0x8

    .line 472
    .local v4, "optionLength":I
    sparse-switch v5, :sswitch_data_0

    .line 513
    :goto_1
    if-gtz v4, :cond_2

    .line 514
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 515
    const-string/jumbo v8, "Invalid option length opt=%d len=%d"

    .line 514
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 515
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 514
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 476
    :sswitch_0
    const/4 v7, 0x4

    .line 477
    const/4 v8, 0x4

    .line 475
    invoke-direct {p0, v1, v7, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v1

    .line 478
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    .line 479
    add-int/lit8 v8, v6, 0x4

    .line 478
    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap5(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    .line 480
    .local v2, "lifetime":J
    invoke-virtual {v0, v2, v3}, Landroid/net/metrics/RaEvent$Builder;->updatePrefixValidLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    .line 483
    const/16 v7, 0x8

    .line 484
    const/4 v8, 0x4

    .line 482
    invoke-direct {p0, v1, v7, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v1

    .line 485
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    .line 486
    add-int/lit8 v8, v6, 0x8

    .line 485
    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap5(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    .line 487
    invoke-virtual {v0, v2, v3}, Landroid/net/metrics/RaEvent$Builder;->updatePrefixPreferredLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    .line 488
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 493
    .end local v2    # "lifetime":J
    :sswitch_1
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    move-result v1

    .line 495
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v6, 0x4

    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap5(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    .line 496
    .restart local v2    # "lifetime":J
    invoke-virtual {v0, v2, v3}, Landroid/net/metrics/RaEvent$Builder;->updateRdnssLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    goto :goto_1

    .line 499
    .end local v2    # "lifetime":J
    :sswitch_2
    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    move-result v1

    .line 500
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v6, 0x4

    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap5(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    .line 501
    .restart local v2    # "lifetime":J
    invoke-virtual {v0, v2, v3}, Landroid/net/metrics/RaEvent$Builder;->updateRouteInfoLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    goto :goto_1

    .line 504
    .end local v2    # "lifetime":J
    :sswitch_3
    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    move-result v1

    .line 505
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v6, 0x4

    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap5(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    .line 506
    .restart local v2    # "lifetime":J
    invoke-virtual {v0, v2, v3}, Landroid/net/metrics/RaEvent$Builder;->updateDnsslLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    goto/16 :goto_1

    .line 517
    .end local v2    # "lifetime":J
    :cond_2
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 520
    .end local v4    # "optionLength":I
    .end local v5    # "optionType":I
    .end local v6    # "position":I
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v1, v7, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    .line 521
    invoke-virtual {p0, p2, p3}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    .line 522
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->-get1(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/metrics/RaEvent$Builder;->build()Landroid/net/metrics/RaEvent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    .line 439
    return-void

    .line 472
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1f -> :sswitch_3
    .end sparse-switch
.end method

.method private IPv6AddresstoString(I)Ljava/lang/String;
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 353
    :try_start_0
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 356
    .local v2, "array":[B
    if-ltz p1, :cond_0

    add-int/lit8 v5, p1, 0x10

    array-length v6, v2

    if-le v5, v6, :cond_1

    .line 357
    :cond_0
    const-string/jumbo v5, "???"

    return-object v5

    .line 356
    :cond_1
    add-int/lit8 v5, p1, 0x10

    if-lt v5, p1, :cond_0

    .line 359
    add-int/lit8 v5, p1, 0x10

    invoke-static {v2, p1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 360
    .local v1, "addressBytes":[B
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 361
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 365
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addressBytes":[B
    .end local v2    # "array":[B
    :catch_0
    move-exception v3

    .line 367
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "???"

    return-object v5

    .line 362
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 364
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v5, "???"

    return-object v5
.end method

.method private addNonLifetime(III)I
    .locals 4
    .param p1, "lastNonLifetimeStart"    # I
    .param p2, "lifetimeOffset"    # I
    .param p3, "lifetimeLength"    # I

    .prologue
    .line 424
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    .line 425
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 426
    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 425
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int v0, p2, p3

    return v0
.end method

.method private addNonLifetimeU32(I)I
    .locals 1
    .param p1, "lastNonLifetimeStart"    # I

    .prologue
    const/4 v0, 0x4

    .line 431
    invoke-direct {p0, p1, v0, v0}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    return v0
.end method

.method private prefixOptionToString(Ljava/lang/StringBuffer;I)V
    .locals 10
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    .prologue
    .line 374
    add-int/lit8 v6, p2, 0x10

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "prefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p2, 0x2

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-static {v6}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    move-result v0

    .line 376
    .local v0, "length":I
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p2, 0x4

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    int-to-long v4, v6

    .line 377
    .local v4, "valid":J
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p2, 0x8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    int-to-long v2, v6

    .line 378
    .local v2, "preferred":J
    const-string/jumbo v6, "%s/%d %ds/%ds "

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    return-void
.end method

.method private rdnssOptionToString(Ljava/lang/StringBuffer;I)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    .prologue
    .line 382
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    move-result v5

    mul-int/lit8 v3, v5, 0x8

    .line 383
    .local v3, "optLen":I
    const/16 v5, 0x18

    if-ge v3, v5, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, p2, 0x4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-static {v5}, Landroid/net/apf/ApfFilter;->-wrap7(I)J

    move-result-wide v0

    .line 385
    .local v0, "lifetime":J
    add-int/lit8 v5, v3, -0x8

    div-int/lit8 v2, v5, 0x10

    .line 386
    .local v2, "numServers":I
    const-string/jumbo v5, "DNS "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    const/4 v4, 0x0

    .local v4, "server":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 388
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    add-int/lit8 v6, p2, 0x8

    mul-int/lit8 v7, v4, 0x10

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 381
    :cond_1
    return-void
.end method


# virtual methods
.method currentLifetime()J
    .locals 6

    .prologue
    .line 571
    iget-wide v0, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    invoke-static {}, Landroid/net/apf/ApfFilter;->-wrap3()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method generateFilterLocked(Landroid/net/apf/ApfGenerator;)J
    .locals 12
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ApfFilter.this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 584
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ra"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v8}, Landroid/net/apf/ApfFilter;->-wrap6(Landroid/net/apf/ApfFilter;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "nextFilterLabel":Ljava/lang/String;
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v8, 0xe

    invoke-virtual {p1, v7, v8}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 587
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {p1, v7, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 588
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    move-result-wide v8

    const-wide/16 v10, 0x6

    div-long/2addr v8, v10

    long-to-int v0, v8

    .line 590
    .local v0, "filterLifetime":I
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v8, 0xf

    invoke-virtual {p1, v7, v8}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 591
    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 592
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 594
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 599
    .local v5, "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_0

    .line 600
    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v8, v7}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 601
    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    .line 602
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 603
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v11

    .line 602
    invoke-static {v9, v10, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 601
    invoke-virtual {p1, v8, v7, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 607
    :cond_0
    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 608
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 609
    .local v4, "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int v6, v8, v7

    .line 611
    .local v6, "offset":I
    const/16 v7, 0x38

    if-ne v6, v7, :cond_2

    .line 592
    .end local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "offset":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .restart local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v6    # "offset":I
    :cond_2
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v2, v7, v6

    .line 615
    .local v2, "length":I
    packed-switch v2, :pswitch_data_0

    .line 618
    :pswitch_0
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bogus lifetime size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 616
    :pswitch_1
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v7, v6}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 620
    :goto_2
    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_1

    .line 617
    :pswitch_2
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v7, v6}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    goto :goto_2

    .line 623
    .end local v2    # "length":I
    .end local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "offset":I
    :cond_3
    const-string/jumbo v7, "__DROP__"

    invoke-virtual {p1, v7}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 624
    invoke-virtual {p1, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 625
    int-to-long v8, v0

    return-wide v8

    .line 615
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getLastMatchingPacket()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v2, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isExpired()Z
    .locals 4

    .prologue
    .line 577
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches([BI)Z
    .locals 7
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v6, 0x0

    .line 527
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-eq p2, v4, :cond_0

    return v6

    .line 528
    :cond_0
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 529
    .local v3, "referencePacket":[B
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nonLifetime$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 530
    .local v1, "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_1

    .line 531
    aget-byte v4, p1, v0

    aget-byte v5, v3, v0

    if-eq v4, v5, :cond_2

    return v6

    .line 530
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "i":I
    .end local v1    # "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method minLifetime([BI)J
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .prologue
    .line 540
    const-wide v4, 0x7fffffffffffffffL

    .line 542
    .local v4, "minLifetime":J
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 543
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 544
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int v3, v9, v8

    .line 547
    .local v3, "offset":I
    const/16 v8, 0x38

    if-ne v3, v8, :cond_0

    .line 543
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_0
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v2, v8, v3

    .line 553
    .local v2, "lifetimeLength":I
    packed-switch v2, :pswitch_data_0

    .line 561
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bogus lifetime size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 555
    :pswitch_1
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    invoke-static {v8}, Landroid/net/apf/ApfFilter;->-wrap1(S)I

    move-result v8

    int-to-long v6, v8

    .line 563
    .local v6, "optionLifetime":J
    :goto_2
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 558
    .end local v6    # "optionLifetime":J
    :pswitch_2
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    invoke-static {v8}, Landroid/net/apf/ApfFilter;->-wrap7(I)J

    move-result-wide v6

    .restart local v6    # "optionLifetime":J
    goto :goto_2

    .line 565
    .end local v2    # "lifetimeLength":I
    .end local v3    # "offset":I
    .end local v6    # "optionLifetime":J
    :cond_1
    return-wide v4

    .line 553
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 394
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 395
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "RA %s -> %s %ds "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 396
    const/16 v6, 0x16

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 397
    const/16 v6, 0x26

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 398
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-static {v6}, Landroid/net/apf/ApfFilter;->-wrap1(S)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 395
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 400
    .local v1, "i":I
    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfFilter$Ra;->prefixOptionToString(Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    .end local v1    # "i":I
    .end local v2    # "i$iterator":Ljava/util/Iterator;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "<Malformed RA>"

    return-object v4

    .line 402
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "i$iterator":Ljava/util/Iterator;
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 403
    .restart local v1    # "i":I
    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfFilter$Ra;->rdnssOptionToString(Ljava/lang/StringBuffer;I)V

    goto :goto_1

    .line 405
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method
