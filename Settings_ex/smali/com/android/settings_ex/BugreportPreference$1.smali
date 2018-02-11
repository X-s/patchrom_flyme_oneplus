.class Lcom/android/settings_ex/BugreportPreference$1;
.super Ljava/lang/Object;
.source "BugreportPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/BugreportPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BugreportPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BugreportPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/BugreportPreference;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/BugreportPreference$1;->this$0:Lcom/android/settings_ex/BugreportPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/BugreportPreference$1;->this$0:Lcom/android/settings_ex/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings_ex/BugreportPreference;->-get1(Lcom/android/settings_ex/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/BugreportPreference$1;->this$0:Lcom/android/settings_ex/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings_ex/BugreportPreference;->-get0(Lcom/android/settings_ex/BugreportPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/BugreportPreference$1;->this$0:Lcom/android/settings_ex/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings_ex/BugreportPreference;->-get3(Lcom/android/settings_ex/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/BugreportPreference$1;->this$0:Lcom/android/settings_ex/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings_ex/BugreportPreference;->-get1(Lcom/android/settings_ex/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/BugreportPreference$1;->this$0:Lcom/android/settings_ex/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings_ex/BugreportPreference;->-get3(Lcom/android/settings_ex/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/BugreportPreference$1;->this$0:Lcom/android/settings_ex/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings_ex/BugreportPreference;->-get2(Lcom/android/settings_ex/BugreportPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/BugreportPreference$1;->this$0:Lcom/android/settings_ex/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings_ex/BugreportPreference;->-get3(Lcom/android/settings_ex/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/BugreportPreference$1;->this$0:Lcom/android/settings_ex/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings_ex/BugreportPreference;->-get1(Lcom/android/settings_ex/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 64
    :cond_3
    return-void
.end method
