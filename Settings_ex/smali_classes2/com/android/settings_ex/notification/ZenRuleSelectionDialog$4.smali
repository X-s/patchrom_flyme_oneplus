.class Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->bindType(Lcom/android/settings_ex/notification/ZenRuleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;

.field final synthetic val$ri:Lcom/android/settings_ex/notification/ZenRuleInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;Lcom/android/settings_ex/notification/ZenRuleInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;
    .param p2, "val$ri"    # Lcom/android/settings_ex/notification/ZenRuleInfo;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;->this$0:Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;

    iput-object p2, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;->val$ri:Lcom/android/settings_ex/notification/ZenRuleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;->this$0:Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->-get2(Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;->val$ri:Lcom/android/settings_ex/notification/ZenRuleInfo;

    iget-boolean v0, v0, Lcom/android/settings_ex/notification/ZenRuleInfo;->isSystem:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;->this$0:Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;->val$ri:Lcom/android/settings_ex/notification/ZenRuleInfo;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->onSystemRuleSelected(Lcom/android/settings_ex/notification/ZenRuleInfo;)V

    .line 115
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;->this$0:Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog$4;->val$ri:Lcom/android/settings_ex/notification/ZenRuleInfo;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;->onExternalRuleSelected(Lcom/android/settings_ex/notification/ZenRuleInfo;)V

    goto :goto_0
.end method
