.class Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;
.super Landroid/os/AsyncTask;
.source "OPLocalRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private isclose:Z

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Landroid/content/ContentResolver;)V
    .locals 1
    .param p2, "rs"    # Landroid/content/ContentResolver;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->isclose:Z

    .line 193
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->resolver:Landroid/content/ContentResolver;

    .line 194
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 198
    const/4 v7, 0x0

    .line 199
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 200
    .local v11, "state":I
    if-nez v11, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->resolver:Landroid/content/ContentResolver;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$400()Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$500()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data not like ? and (mime_type like ? or mime_type like \'application/ogg\')"

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_ALL:[Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$600()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_modified DESC,title DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 211
    :goto_0
    if-nez v7, :cond_1

    .line 212
    const/4 v0, 0x0

    .line 247
    :goto_1
    return-object v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->resolver:Landroid/content/ContentResolver;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$400()Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$500()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data not like ? and duration < 60000 and (mime_type like ? or mime_type like \'application/ogg\')"

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->SELECTION_ARGS_PART:[Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$700()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_modified DESC,title DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$800(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$802(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Ljava/util/List;)Ljava/util/List;

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$800(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    :cond_3
    const-string v0, "111"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isclose:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->isclose:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->isclose:Z

    if-eqz v0, :cond_6

    .line 244
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 245
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 224
    :cond_6
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, "path":Ljava/lang/String;
    if-nez v10, :cond_8

    .line 242
    :cond_7
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 228
    :cond_8
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isApeFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v10}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$900(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 235
    invoke-static {v7}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v13

    .line 236
    .local v13, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v0, v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v13, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 238
    .local v6, "check":Z
    new-instance v8, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    invoke-direct {v8, v13, v12, v6}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;-><init>(Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 239
    .local v8, "data":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->filepath:Ljava/lang/String;

    .line 240
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mimetype:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$800(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->isclose:Z

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1000(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1100(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1200(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    new-instance v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$800(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    # setter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1202(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1100(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1100(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1200(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mOPLocalRingtoneAdapter:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1200(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setClose()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$WorkAsyncTask;->isclose:Z

    .line 270
    return-void
.end method
