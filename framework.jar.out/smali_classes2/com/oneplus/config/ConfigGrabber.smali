.class public Lcom/oneplus/config/ConfigGrabber;
.super Ljava/lang/Object;
.source "ConfigGrabber.java"


# instance fields
.field private final OPCONFIG_URI:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, "Config:Grabber:"

    iput-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "content://com.oneplus.config.ConfigProvider/"

    iput-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->OPCONFIG_URI:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/oneplus/config/ConfigGrabber;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/oneplus/config/ConfigGrabber;->mConfigName:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public grabConfig()Lorg/json/JSONArray;
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 25
    iget-object v3, p0, Lcom/oneplus/config/ConfigGrabber;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 26
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "content://com.oneplus.config.ConfigProvider/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/config/ConfigGrabber;->mConfigName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 27
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "config_content"

    aput-object v3, v2, v5

    .line 28
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 29
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 31
    .local v12, "json":Lorg/json/JSONArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 32
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 33
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    new-instance v13, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/oneplus/config/ConfigGrabber;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/odm/crypto/ODMEncrypter;->decryptFromAES(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v13, "json":Lorg/json/JSONArray;
    move-object v12, v13

    .line 51
    .end local v12    # "json":Lorg/json/JSONArray;
    .end local v13    # "json":Lorg/json/JSONArray;
    :cond_0
    if-eqz v6, :cond_1

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 55
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v12

    .line 48
    .restart local v12    # "json":Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 49
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    if-eqz v6, :cond_1

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 40
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 42
    .local v10, "e":Ljava/lang/NullPointerException;
    if-eqz v6, :cond_2

    .line 43
    :try_start_2
    new-instance v13, Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v13    # "json":Lorg/json/JSONArray;
    move-object v12, v13

    .line 51
    .end local v12    # "json":Lorg/json/JSONArray;
    .end local v13    # "json":Lorg/json/JSONArray;
    :cond_2
    :goto_1
    if-eqz v6, :cond_1

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 45
    .restart local v12    # "json":Lorg/json/JSONArray;
    :catch_2
    move-exception v11

    .line 46
    .local v11, "exception":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 50
    .end local v10    # "e":Ljava/lang/NullPointerException;
    .end local v11    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 51
    if-eqz v6, :cond_3

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_3
    throw v3

    .line 38
    :catch_3
    move-exception v7

    .line 39
    .local v7, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_4
    iget-object v3, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    if-eqz v6, :cond_1

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 36
    .end local v7    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_4
    move-exception v9

    .line 37
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    iget-object v3, p0, Lcom/oneplus/config/ConfigGrabber;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 51
    if-eqz v6, :cond_1

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
