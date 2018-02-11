.class public Lcom/android/settings_ex/DBReadAsyncTask;
.super Landroid/os/AsyncTask;
.source "DBReadAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.qti.smq.qualcommFeedback.provider"

.field public static final KEY_VALUE:Ljava/lang/String; = "app_status"

.field public static final SMQ_KEY_VALUE:Ljava/lang/String; = "app_status"


# instance fields
.field final CONTENT_URI:Landroid/net/Uri;

.field final SNAP_CONTENT_URI:Landroid/net/Uri;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    const-string/jumbo v0, "content://com.qti.smq.qualcommFeedback.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DBReadAsyncTask;->CONTENT_URI:Landroid/net/Uri;

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/DBReadAsyncTask;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "smq_settings"

    .line 56
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DBReadAsyncTask;->SNAP_CONTENT_URI:Landroid/net/Uri;

    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/DBReadAsyncTask;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 70
    const-string/jumbo v11, "key=?"

    .line 71
    .local v11, "whereClause":Ljava/lang/String;
    new-array v4, v13, [Ljava/lang/String;

    const-string/jumbo v0, "app_status"

    aput-object v0, v4, v12

    .line 73
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/DBReadAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/DBReadAsyncTask;->SNAP_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "key=?"

    move-object v5, v2

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 76
    .local v7, "c":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/settings_ex/DBReadAsyncTask;->mContext:Landroid/content/Context;

    .line 77
    const-string/jumbo v1, "smqpreferences"

    .line 76
    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 79
    .local v9, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 80
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 83
    .local v10, "value":I
    const-string/jumbo v0, "app_status"

    invoke-interface {v9, v0, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 84
    .local v6, "appStatus":I
    if-ne v6, v10, :cond_1

    .line 101
    .end local v6    # "appStatus":I
    .end local v10    # "value":I
    :goto_0
    if-eqz v7, :cond_0

    .line 102
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 88
    .restart local v6    # "appStatus":I
    .restart local v10    # "value":I
    :cond_1
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 89
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v0, "app_status"

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 97
    .end local v6    # "appStatus":I
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "value":I
    :cond_2
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 98
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v0, "app_status"

    invoke-interface {v8, v0, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DBReadAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
