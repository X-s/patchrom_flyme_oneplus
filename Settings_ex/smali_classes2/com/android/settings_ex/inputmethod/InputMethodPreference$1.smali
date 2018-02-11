.class Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/inputmethod/InputMethodPreference;->showSecurityWarnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->-get0(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->-wrap0(Lcom/android/settings_ex/inputmethod/InputMethodPreference;Z)V

    .line 247
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->-wrap1(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    goto :goto_0
.end method
