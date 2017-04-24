.class public Landroid/net/netlink/StructNlAttr;
.super Ljava/lang/Object;
.source "StructNlAttr.java"


# static fields
.field public static final NLA_HEADERLEN:I = 0x4


# instance fields
.field public mByteOrder:Ljava/nio/ByteOrder;

.field public nla_len:S

.field public nla_type:S

.field public nla_value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 88
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 63
    invoke-static {p0}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v1

    .line 64
    .local v1, "struct":Landroid/net/netlink/StructNlAttr;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 78
    .end local v1    # "struct":Landroid/net/netlink/StructNlAttr;
    :cond_1
    :goto_0
    return-object v1

    .line 68
    .restart local v1    # "struct":Landroid/net/netlink/StructNlAttr;
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 69
    .local v0, "baseOffset":I
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    iget-short v3, v1, Landroid/net/netlink/StructNlAttr;->nla_len:S

    const v4, 0xffff

    and-int v2, v3, v4

    .line 72
    .local v2, "valueLen":I
    add-int/lit8 v2, v2, -0x4

    .line 73
    if-lez v2, :cond_1

    .line 74
    new-array v3, v2, [B

    iput-object v3, v1, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 75
    iget-object v3, v1, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v1}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 44
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_2

    :cond_0
    move-object v1, v2

    .line 59
    :cond_1
    :goto_0
    return-object v1

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 49
    .local v0, "baseOffset":I
    new-instance v1, Landroid/net/netlink/StructNlAttr;

    invoke-direct {v1}, Landroid/net/netlink/StructNlAttr;-><init>()V

    .line 50
    .local v1, "struct":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, v1, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, v1, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 52
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    iput-object v3, v1, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 54
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    iget-short v3, v1, Landroid/net/netlink/StructNlAttr;->nla_len:S

    if-ge v3, v4, :cond_1

    move-object v1, v2

    .line 57
    goto :goto_0
.end method


# virtual methods
.method public getAlignedLength()I
    .locals 1

    .prologue
    .line 91
    iget-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(S)I

    move-result v0

    return v0
.end method

.method public getValueAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public getValueAsInetAddress()Ljava/net/InetAddress;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-nez v2, :cond_0

    .line 115
    :goto_0
    return-object v1

    .line 113
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ignored":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 106
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_1
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 121
    .local v0, "originalPosition":I
    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 122
    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 123
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StructNlAttr{ nla_len{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "nla_type{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "nla_value{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
