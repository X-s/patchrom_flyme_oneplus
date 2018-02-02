.class public Lcom/amap/api/mapcore2d/ct;
.super Ljava/lang/Thread;
.source "SDKCoordinatorDownload.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ea$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ct$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/ea;

.field private b:Lcom/amap/api/mapcore2d/ct$a;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "sodownload"

    .line 62
    sput-object v0, Lcom/amap/api/mapcore2d/ct;->h:Ljava/lang/String;

    const-string/jumbo v0, "sofail"

    .line 63
    sput-object v0, Lcom/amap/api/mapcore2d/ct;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ct;->g:Landroid/content/Context;

    .line 77
    iput-object p4, p0, Lcom/amap/api/mapcore2d/ct;->f:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "temp.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    const-string/jumbo v0, "libwgs2gcj.so"

    .line 79
    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ct;->e:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/amap/api/mapcore2d/ct$a;

    invoke-direct {v0, p3}, Lcom/amap/api/mapcore2d/ct$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ct;->b:Lcom/amap/api/mapcore2d/ct$a;

    .line 82
    new-instance v0, Lcom/amap/api/mapcore2d/ea;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ct;->b:Lcom/amap/api/mapcore2d/ct$a;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ea;-><init>(Lcom/amap/api/mapcore2d/ee;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ct;->a:Lcom/amap/api/mapcore2d/ea;

    .line 83
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "libso"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->b:Lcom/amap/api/mapcore2d/ct$a;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->b:Lcom/amap/api/mapcore2d/ct$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ct$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->b:Lcom/amap/api/mapcore2d/ct$a;

    .line 110
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ct$a;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "libJni_wgs2gcj.so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->b:Lcom/amap/api/mapcore2d/ct$a;

    .line 111
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ct$a;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ct;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ct;->start()V

    .line 119
    return-void

    .line 116
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->c:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ct;->d()V

    .line 226
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ct;->g:Landroid/content/Context;

    const-string/jumbo v2, "tempfile"

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/ct;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    :goto_1
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onException"

    .line 240
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 229
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 237
    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onException"

    .line 235
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 231
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public a([BJ)V
    .locals 4

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->c:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 161
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_1
    return-void

    .line 141
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :goto_2
    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/ct;->c:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onDownload"

    .line 149
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ct;->d()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 169
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ct;->d()V

    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onDownload"

    .line 170
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 157
    :cond_2
    return-void

    .line 167
    :catch_2
    move-exception v0

    .line 163
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ct;->d()V

    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onDownload"

    .line 165
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ct;->d()V

    .line 181
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->c:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-nez v0, :cond_2

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ct;->d()V

    .line 215
    :goto_1
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 208
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ct;->d()V

    .line 209
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ct;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onFinish"

    .line 213
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ct;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ct;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ct;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 196
    :cond_3
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ct;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    return-void

    .line 211
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method public run()V
    .locals 3

    .prologue
    .line 123
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ct;->g:Landroid/content/Context;

    const-string/jumbo v2, "tempfile"

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/ct;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct;->a:Lcom/amap/api/mapcore2d/ea;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/ea;->a(Lcom/amap/api/mapcore2d/ea$a;)V

    .line 133
    :goto_1
    return-void

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "run"

    .line 129
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ct;->d()V

    goto :goto_1
.end method
