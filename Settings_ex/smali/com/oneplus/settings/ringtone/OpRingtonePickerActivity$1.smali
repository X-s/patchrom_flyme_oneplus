.class Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "OpRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    iget v1, v1, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->access$000(Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->access$000(Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getSim1Enable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->access$100(Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->access$100(Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getSim2Enable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 318
    :cond_1
    return-void
.end method
