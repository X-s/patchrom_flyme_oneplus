.class Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/ApnSettings;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ApnSettings;Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/ApnSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 704
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 703
    :goto_0
    return-void

    .line 706
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 707
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 708
    invoke-static {v2}, Lcom/android/settings_ex/ApnSettings;->-set0(Z)Z

    .line 709
    return-void

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-static {v1}, Lcom/android/settings_ex/ApnSettings;->-wrap2(Lcom/android/settings_ex/ApnSettings;)V

    .line 712
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 713
    invoke-static {v2}, Lcom/android/settings_ex/ApnSettings;->-set0(Z)Z

    .line 716
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-static {v2}, Lcom/android/settings_ex/ApnSettings;->-get1(Lcom/android/settings_ex/ApnSettings;)Z

    move-result v2

    const/16 v3, 0x3e9

    invoke-virtual {v1, v3, v2}, Lcom/android/settings_ex/ApnSettings;->removeDialog(IZ)V

    .line 719
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 720
    const v2, 0x7f0e090c

    .line 719
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
