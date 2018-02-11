.class Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

.field final synthetic val$disallowedByAdmin:Z

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;
    .param p2, "val$disallowedByAdmin"    # Z
    .param p3, "val$mode"    # I

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    iput-boolean p2, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->val$disallowedByAdmin:Z

    iput p3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->val$disallowedByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->-get2(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->-get2(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 168
    return-void

    .line 170
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings_ex/deviceinfo/UsbBackend;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->setMode(I)V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 164
    return-void
.end method
