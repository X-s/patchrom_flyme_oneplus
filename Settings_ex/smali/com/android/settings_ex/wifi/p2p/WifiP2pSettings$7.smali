.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field num:I

.field final synthetic this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->name:Ljava/lang/String;

    .line 495
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->num:I

    .line 496
    iget v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->num:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->nameTemp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 499
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 500
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 504
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 484
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 485
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 486
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->nameTemp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 489
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 478
    return-void
.end method
