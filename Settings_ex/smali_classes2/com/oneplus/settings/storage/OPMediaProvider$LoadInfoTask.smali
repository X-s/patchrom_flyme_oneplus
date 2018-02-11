.class Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;
.super Landroid/os/AsyncTask;
.source "OPMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/storage/OPMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSignal:Landroid/os/CancellationSignal;

.field private final mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p3, "callback"    # Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 152
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mSignal:Landroid/os/CancellationSignal;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mResolver:Landroid/content/ContentResolver;

    .line 156
    iput-object p2, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .line 157
    iput-object p3, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    .line 154
    return-void
.end method


# virtual methods
.method public cancelExcutor()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->cancel(Z)Z

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 160
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 167
    const/4 v7, 0x0

    .line 168
    .local v7, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    .line 170
    .local v10, "size":J
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-static {v1}, Lcom/oneplus/settings/storage/OPMediaProvider;->-wrap0(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/settings/storage/OPMediaProvider;->-get0()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-static {v3}, Lcom/oneplus/settings/storage/OPMediaProvider;->-wrap1(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 171
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 172
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 173
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    add-long/2addr v10, v0

    goto :goto_0

    .line 180
    :cond_0
    if-eqz v7, :cond_1

    .line 181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 184
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 177
    :catch_0
    move-exception v8

    .line 178
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "LoadInfoTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doInBackground e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    if-eqz v7, :cond_1

    .line 181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 179
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 180
    if-eqz v7, :cond_2

    .line 181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_2
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    iget-object v1, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/settings/storage/OPMediaProvider$Callback;->loaded(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V

    .line 188
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
