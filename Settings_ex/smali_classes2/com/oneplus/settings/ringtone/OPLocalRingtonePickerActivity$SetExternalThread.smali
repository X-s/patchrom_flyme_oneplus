.class Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;
.super Ljava/lang/Thread;
.source "OPLocalRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetExternalThread"
.end annotation


# instance fields
.field private isClose:Z

.field private mPreference:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
    .param p2, "data"    # Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->mPreference:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    .line 344
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 351
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->mPreference:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->-wrap0(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;

    move-result-object v0

    .line 352
    .local v0, "uriItem":Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-boolean v1, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mContactsRingtone:Z

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getSimId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 357
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 356
    invoke-static {v1, v3, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 365
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v1, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget v2, v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    .line 366
    invoke-static {v1, v0, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateDb(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 369
    :cond_3
    const-string/jumbo v1, "chenhl"

    const-string/jumbo v2, "set ringtone ok!"

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 358
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getSimId()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 360
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 359
    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 361
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isThreePart()Z

    move-result v1

    if-nez v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget v2, v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    .line 362
    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    .line 372
    return-void
.end method
