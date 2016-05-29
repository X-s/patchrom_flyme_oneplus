.class Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;
.super Ljava/lang/Object;
.source "BackupRestoreSrv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/recover/BackupRestoreSrv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackupRestoreSrvClient"
.end annotation


# static fields
.field private static final RES_LEN:I = 0x2

.field private static final SERVER_NAME:Ljava/lang/String; = "backuprestore"

.field private static mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;


# instance fields
.field private buflen:I

.field private mClientSocket:Landroid/net/LocalSocket;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private res:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-direct {v0}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;-><init>()V

    sput-object v0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->res:[B

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->buflen:I

    .line 92
    return-void
.end method

.method public static getInstence()Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    return-object v0
.end method


# virtual methods
.method public connect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v3, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 118
    :goto_0
    return v2

    .line 101
    :cond_0
    const-string v3, "BackupRestoreSrv"

    const-string v4, "Connecting..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    .line 104
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "backuprestore"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 106
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 108
    iget-object v3, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    const v4, 0x493e0

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 111
    iget-object v3, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mIn:Ljava/io/InputStream;

    .line 112
    iget-object v3, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->disconnect()V

    .line 116
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    const-string v0, "BackupRestoreSrv"

    const-string v1, "Disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mClientSocket:Landroid/net/LocalSocket;

    .line 139
    iput-object v2, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mIn:Ljava/io/InputStream;

    .line 140
    iput-object v2, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;

    .line 141
    return-void

    .line 136
    :catch_0
    move-exception v0

    goto :goto_2

    .line 131
    :catch_1
    move-exception v0

    goto :goto_1

    .line 126
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public excute(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 144
    const-string v1, "BackupRestoreSrv"

    const-string v2, "excute..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->connect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "BackupRestoreSrv"

    const-string v2, "connection failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return v0

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->writeCmd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    const-string v1, "BackupRestoreSrv"

    const-string v2, "write failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->connect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->writeCmd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    :cond_1
    const-string v1, "BackupRestoreSrv"

    const-string v2, "write failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_2
    const-string v0, "BackupRestoreSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->readReply()I

    move-result v0

    goto :goto_0
.end method

.method public readReply()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 182
    const/4 v2, 0x0

    .local v2, "off":I
    const/4 v0, 0x0

    .line 183
    .local v0, "count":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 185
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mIn:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->res:[B

    rsub-int/lit8 v5, v0, 0x2

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 186
    if-gtz v0, :cond_1

    .line 187
    const-string v3, "BackupRestoreSrv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readReply failed! count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    :goto_1
    if-ne v2, v6, :cond_2

    .line 197
    iget-object v3, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->res:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->res:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 199
    :goto_2
    return v3

    .line 190
    :cond_1
    add-int/2addr v2, v0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BackupRestoreSrv"

    const-string v4, "read exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public writeCmd(Ljava/lang/String;)Z
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    int-to-short v1, v5

    .line 163
    .local v1, "len":S
    new-array v2, v6, [B

    .line 164
    .local v2, "precmd":[B
    if-lt v1, v3, :cond_0

    const/16 v5, 0x800

    if-le v1, v5, :cond_1

    :cond_0
    move v3, v4

    .line 178
    :goto_0
    return v3

    .line 166
    :cond_1
    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 167
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 169
    :try_start_0
    const-string v5, "BackupRestoreSrv"

    const-string v6, "before write"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v5, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 171
    iget-object v5, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 172
    const-string v5, "BackupRestoreSrv"

    const-string v6, "after write"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BackupRestoreSrv"

    const-string v5, "write error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->disconnect()V

    move v3, v4

    .line 176
    goto :goto_0
.end method
