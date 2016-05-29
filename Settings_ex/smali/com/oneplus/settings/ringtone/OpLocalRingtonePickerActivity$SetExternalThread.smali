.class Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;
.super Ljava/lang/Thread;
.source "OpLocalRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetExternalThread"
.end annotation


# instance fields
.field private isClose:Z

.field private mPreference:Landroid/preference/Preference;

.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;Landroid/preference/Preference;)V
    .locals 1
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->mPreference:Landroid/preference/Preference;

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    .line 243
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 247
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->mPreference:Landroid/preference/Preference;

    # invokes: Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->updateExternalFile(Landroid/preference/Preference;)Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->access$400(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;Landroid/preference/Preference;)Landroid/net/Uri;

    move-result-object v0

    .line 248
    .local v0, "uriItem":Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getSimId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 252
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 261
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    iget-object v1, v1, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    iget v2, v2, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mType:I

    invoke-static {v1, v0, v2}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->updateDb(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 265
    :cond_2
    const-string v1, "chenhl"

    const-string v2, "set ringtone ok!"

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getSimId()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 255
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 258
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    iget v2, v2, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mType:I

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    .line 270
    return-void
.end method
