.class Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;
.super Ljava/lang/Object;
.source "OpRingtoneBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mSimid:I
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->access$000(Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    iget-object v0, v0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1$1;-><init>(Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mSimid:I
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->access$000(Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    iget v2, v2, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mType:I

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0
.end method
