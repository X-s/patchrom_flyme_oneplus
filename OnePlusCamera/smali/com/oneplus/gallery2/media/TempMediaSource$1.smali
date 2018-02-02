.class Lcom/oneplus/gallery2/media/TempMediaSource$1;
.super Ljava/lang/Object;
.source "TempMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempMediaSource;->getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/TempMediaSource;

.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

.field private final synthetic val$contentUri:Landroid/net/Uri;

.field private final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempMediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/TempMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->val$contentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 88
    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 89
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->val$contentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    const-string/jumbo v0, "_data"

    .line 90
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 91
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 93
    :try_start_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/TempMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempMediaSource;->access$0(Lcom/oneplus/gallery2/media/TempMediaSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMedia() - filePath : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    if-nez v2, :cond_2

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/TempMediaSource;

    const/16 v2, 0x2711

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->val$contentUri:Landroid/net/Uri;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->val$mimeType:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 107
    return-void

    .line 94
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 97
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/TempMediaSource;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/TempMediaSource;->access$0(Lcom/oneplus/gallery2/media/TempMediaSource;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "getMedia() - Failed to query file path."

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 101
    if-eqz v6, :cond_0

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v6

    .line 101
    :goto_2
    if-nez v2, :cond_1

    .line 103
    :goto_3
    throw v0

    .line 102
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v6

    goto :goto_2

    .line 94
    :catch_1
    move-exception v0

    move-object v1, v6

    move-object v6, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v2

    goto :goto_1
.end method
