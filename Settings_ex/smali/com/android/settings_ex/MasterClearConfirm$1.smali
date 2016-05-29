.class Lcom/android/settings_ex/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09055a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09055b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    # invokes: Lcom/android/settings_ex/MasterClearConfirm;->doMasterClear()V
    invoke-static {v1}, Lcom/android/settings_ex/MasterClearConfirm;->access$000(Lcom/android/settings_ex/MasterClearConfirm;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 108
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    goto :goto_0
.end method
