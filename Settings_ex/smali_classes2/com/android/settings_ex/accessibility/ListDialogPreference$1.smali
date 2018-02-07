.class Lcom/android/settings_ex/accessibility/ListDialogPreference$1;
.super Ljava/lang/Object;
.source "ListDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accessibility/ListDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/ListDialogPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/ListDialogPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/accessibility/ListDialogPreference;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings_ex/accessibility/ListDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings_ex/accessibility/ListDialogPreference;

    long-to-int v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/accessibility/ListDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings_ex/accessibility/ListDialogPreference;

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/accessibility/ListDialogPreference;->setValue(I)V

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings_ex/accessibility/ListDialogPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/accessibility/ListDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 159
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 153
    :cond_1
    return-void
.end method
