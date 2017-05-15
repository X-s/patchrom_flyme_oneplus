.class Lcom/oneplus/settings/OPSettingsActivity$1;
.super Landroid/os/Handler;
.source "OPSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPSettingsActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPSettingsActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oneplus/settings/OPSettingsActivity$1;->this$0:Lcom/oneplus/settings/OPSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity$1;->this$0:Lcom/oneplus/settings/OPSettingsActivity;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity$1;->this$0:Lcom/oneplus/settings/OPSettingsActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/search/Index;->update()V

    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "OPSettingsActivity"

    const-string v1, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
