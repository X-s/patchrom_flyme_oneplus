.class final Lcom/aps/aa;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:[B

.field protected b:[B

.field protected c:[B

.field protected d:S

.field protected e:S

.field protected f:B

.field protected g:[B

.field protected h:[B

.field protected i:S

.field protected j:Ljava/util/ArrayList;

.field private k:B

.field private l:S


# direct methods
.method constructor <init>()V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x29

    iput-byte v0, p0, Lcom/aps/aa;->k:B

    iput-short v1, p0, Lcom/aps/aa;->l:S

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/aps/aa;->a:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/aps/aa;->b:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/aps/aa;->c:[B

    iput-short v1, p0, Lcom/aps/aa;->d:S

    iput-short v1, p0, Lcom/aps/aa;->e:S

    iput-byte v1, p0, Lcom/aps/aa;->f:B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/aps/aa;->g:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/aps/aa;->h:[B

    iput-short v1, p0, Lcom/aps/aa;->i:S

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/aa;->j:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/aps/aa;->a:[B

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/aps/aa;->b:[B

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/aps/aa;->c:[B

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-short v0, p0, Lcom/aps/aa;->d:S

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v0, p0, Lcom/aps/aa;->e:S

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v0, p0, Lcom/aps/aa;->f:B

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/aps/aa;->g:[B

    const/16 v1, 0xf

    const/4 v5, 0x0

    aput-byte v5, v0, v1

    iget-object v0, p0, Lcom/aps/aa;->g:[B

    iget-object v1, p0, Lcom/aps/aa;->g:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/aps/ah;->a([BI)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/aps/aa;->h:[B

    const/16 v1, 0x1f

    const/4 v5, 0x0

    aput-byte v5, v0, v1

    iget-object v0, p0, Lcom/aps/aa;->h:[B

    iget-object v1, p0, Lcom/aps/aa;->h:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/aps/ah;->a([BI)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-short v0, p0, Lcom/aps/aa;->i:S

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v1, v2

    :goto_0
    iget-short v0, p0, Lcom/aps/aa;->i:S

    if-lt v1, v0, :cond_0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/aps/aa;->l:S

    iget-byte v0, p0, Lcom/aps/aa;->k:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-short v0, p0, Lcom/aps/aa;->l:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/aps/aa;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/x;

    iget-object v7, v0, Lcom/aps/x;->c:Lcom/aps/z;

    if-nez v7, :cond_6

    :cond_1
    :goto_2
    iget-object v7, v0, Lcom/aps/x;->d:Lcom/aps/v;

    if-nez v7, :cond_7

    :cond_2
    :goto_3
    iget-object v7, v0, Lcom/aps/x;->e:Lcom/aps/ai;

    if-nez v7, :cond_8

    :cond_3
    :goto_4
    iget-object v7, v0, Lcom/aps/x;->f:Lcom/aps/ae;

    if-nez v7, :cond_9

    :cond_4
    :goto_5
    iget-object v7, v0, Lcom/aps/x;->g:Lcom/aps/ac;

    if-nez v7, :cond_a

    :cond_5
    :goto_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    int-to-short v6, v6

    iput-short v6, v0, Lcom/aps/x;->a:S

    iget-short v6, v0, Lcom/aps/x;->a:S

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, v0, Lcom/aps/x;->b:I

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    move v1, v0

    goto :goto_0

    :cond_6
    iget-object v7, v0, Lcom/aps/x;->c:Lcom/aps/z;

    invoke-virtual {v7, v6}, Lcom/aps/z;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_7
    :try_start_1
    iget-object v7, v0, Lcom/aps/x;->d:Lcom/aps/v;

    invoke-virtual {v7, v6}, Lcom/aps/v;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_3

    :cond_8
    iget-object v7, v0, Lcom/aps/x;->e:Lcom/aps/ai;

    invoke-virtual {v7, v6}, Lcom/aps/ai;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_4

    :cond_9
    iget-object v7, v0, Lcom/aps/x;->f:Lcom/aps/ae;

    invoke-virtual {v7, v6}, Lcom/aps/ae;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_5

    :cond_a
    iget-object v7, v0, Lcom/aps/x;->g:Lcom/aps/ac;

    invoke-virtual {v7, v6}, Lcom/aps/ac;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method


# virtual methods
.method protected final a()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v1}, Lcom/aps/aa;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
