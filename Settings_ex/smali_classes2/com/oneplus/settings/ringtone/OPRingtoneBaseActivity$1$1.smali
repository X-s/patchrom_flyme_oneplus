.class Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1$1;
.super Ljava/lang/Object;
.source "OPRingtoneBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1$1;->this$1:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1$1;->this$1:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;

    iget-object v0, v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->updateSelected()V

    .line 262
    return-void
.end method
