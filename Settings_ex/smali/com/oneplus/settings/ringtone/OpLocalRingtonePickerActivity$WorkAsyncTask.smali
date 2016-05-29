.class Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;
.super Landroid/content/AsyncQueryHandler;
.source "OpLocalRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    .line 157
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x1

    .line 163
    if-nez p3, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;
    invoke-static {v5}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->access$200(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    .line 167
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;
    invoke-static {v5, v7}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->access$202(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;Ljava/util/List;)Ljava/util/List;

    .line 169
    :cond_2
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;
    invoke-static {v5}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->access$200(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 170
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v5}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 171
    if-eqz p3, :cond_7

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 173
    :cond_3
    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_5

    .line 193
    :cond_4
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 197
    .end local v2    # "path":Ljava/lang/String;
    :goto_2
    if-eqz p3, :cond_0

    .line 198
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 177
    .restart local v2    # "path":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 181
    new-instance v1, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-direct {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 183
    .local v1, "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    iget v5, v5, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mType:I

    invoke-static {v5}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "type":Ljava/lang/String;
    invoke-static {p3}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    .line 185
    .local v4, "uri":Landroid/net/Uri;
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 187
    new-instance v5, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setData(Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;)V

    .line 189
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;
    invoke-static {v5}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->access$200(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v5}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    iget-object v5, v5, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 195
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_7
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v5}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mOpNoFilePreference:Lcom/oneplus/settings/ringtone/OpNoFilePreference;
    invoke-static {v6}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->access$300(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OpNoFilePreference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method
